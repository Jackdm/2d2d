//
//  ViewController.swift
//  2Drunk2Drive
//
//  Created by Jack McCoy on 3/4/17.
//  Copyright © 2017 Jack McCoy. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text1.inputView = pick1
        text2.inputView = pick2
        text3.inputView = pick3
        text4.inputView = pick4
        
        weight.text=""
        
        weight.placeholder="weight"
        
        pick1.removeFromSuperview()
        pick2.removeFromSuperview()
        pick3.removeFromSuperview()
        pick4.removeFromSuperview()
    }
    
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var alcResult: UILabel!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if Float(textField.text!) == nil {
            return false
        }
        return true
    }
    
    
    
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var pick1: UIPickerView!
    
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var pick2: UIPickerView!
    
    
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var pick3: UIPickerView!
    
    
    @IBOutlet weak var text4: UITextField!
    @IBOutlet weak var pick4: UIPickerView!
    
    var vodkaamount = ["0","1","2","3","4","5","6","7","8","9","10"]
    var cocktailamount = ["0","1","2","3","4","5","6","7","8","9","10"]
    var beeramount = ["0", "1","2","3","4","5","6","7","8","9","10"]
    var wineamount = ["0", "1","2","3","4","5","6","7","8","9","10"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var countrows: Int = vodkaamount.count
        if pickerView == pick2 {
            countrows = self.cocktailamount.count
        } else if pickerView == pick3{
            countrows = self.beeramount.count
        } else if pickerView == pick4{
            countrows = self.wineamount.count
        }
        return countrows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == pick1 {
            let titleRow = vodkaamount[row]
            return titleRow
        }
        else if pickerView == pick2 {
            let titleRow = cocktailamount[row]
            return titleRow
        } else if pickerView == pick3 {
            let titleRow = beeramount[row]
            return titleRow
        } else {
            let titleRow = wineamount[row]
            return titleRow
        }
        return ""
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pick1{
            self.text1.text = self.vodkaamount[row]
            self.pick1.isHidden = true
        }
            
        else if pickerView == pick2 {
            self.text2.text = self.cocktailamount[row]
            self.pick2.isHidden = true
        }
        else if pickerView == pick3 {
            self.text3.text = self.beeramount[row]
            self.pick3.isHidden = true
        } else {
            self.text4.text = self.wineamount[row]
            self.pick4.isHidden = true
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == self.text1) {
            self.pick1.isHidden = false
        }
        else if (textField == self.text2) {
            self.pick2.isHidden = false
        }
        else if (textField == self.text3) {
            self.pick3.isHidden = false
        } else {
            self.pick4.isHidden = false
            
        }
        
        
        
        
    }
    
    
    @IBAction func calculatePressed(_ sender: Any) {
        let bloodAlc1 = Float(text1.text!)!*14.0
        let bloodAlc2 = Float(text2.text!)!*15.0
        let bloodAlc3 = Float(text3.text!)!*17.7
        let bloodAlc4 = Float(text4.text!)!*14.0
        let bloodAlcT = bloodAlc1+bloodAlc2+bloodAlc3+bloodAlc4
        let div = Float(weight.text!)!*453.0*0.615*100.0
        alcResult.text = String(bloodAlcT/div)
        
        
    }
}
