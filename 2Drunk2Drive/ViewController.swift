//
//  ViewController.swift
//  2Drunk2Drive
//
//  Created by Jack McCoy on 3/4/17.
//  Copyright © 2017 Jack McCoy. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var pick1: UIPickerView!
    
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var pick2: UIPickerView!
    
    
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var pick3: UIPickerView!
    
    
    @IBOutlet weak var text4: UITextField!
    @IBOutlet weak var pick4: UIPickerView!
    
    var vodkaamount = ["1","2","3","4","5","6","7","8","9","10"]
    var cocktailamount = ["1","2","3","4","5","6","7","8","9","10"]
    var beeramount = ["1","2","3","4","5","6","7","8","9","10"]
    var wineamount = ["1","2","3","4","5","6","7","8","9","10"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var countrows: Int = vodkaamount.count
        if pickerView == pick2 {
            countrows = self.cocktailamount.count
        }
        return countrows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == pick2 {
            let titleRow = vodkaamount[row]
            
            return titleRow
            
        }
            
        else if pickerView == pick2 {
            let titleRow = cocktailamount[row]
            
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
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == self.text1) {
            self.pick1.isHidden = false
            
        }
        else if (textField == self.text2) {
            self.pick2.isHidden = false
        
    }
        
        //
        
        
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            var countrows: Int = beeramount.count
            if pickerView == pick4 {
                countrows = self.wineamount.count
            }
            return countrows
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            if pickerView == pick4 {
                let titleRow = beeramount[row]
                
                return titleRow
                
            }
                
            else if pickerView == pick4 {
                let titleRow = wineamount[row]
                
                return titleRow
            }
            return ""
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            if pickerView == pick3{
                self.text3.text = self.beeramount[row]
                self.pick3.isHidden = true
            }
                
            else if pickerView == pick4 {
                self.text4.text = self.wineamount[row]
                self.pick4.isHidden = true
            }
        }
        
        func textFieldDidBeginEditing(_ textField: UITextField) {
            if (textField == self.text3) {
                self.pick3.isHidden = false
                
            }
            else if (textField == self.text4) {
                self.pick4.isHidden = false
                
            }
    
    
    // @IBOutlet weak var Button: UIButton!
    
    // @IBOutlet weak var Label: UILabel!
    
    // @IBAction func buttonPress(_ sender: Any) {
        
       // Label.text = "yeah dude get medical help"
        
        
    }
    
    
    
    // override func viewDidLoad() {
    //    super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
    }
    
    
    
//}
