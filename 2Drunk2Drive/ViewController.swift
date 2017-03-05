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
    
    pick1.removeFromSuperview()
    pick2.removeFromSuperview()
    pick3.removeFromSuperview()
    pick4.removeFromSuperview()
    }
    
    
    
    
    @IBOutlet weak var timeElapsed: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    
    
    
    
    
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var pick1: UIPickerView!
    
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var pick2: UIPickerView!
    
    
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var pick3: UIPickerView!
    
    
    @IBOutlet weak var text4: UITextField!
    @IBOutlet weak var pick4: UIPickerView!
    
    var vodkaamount = ["0 shots","1 shot","2 shots","3 shots","4 shots","5 shots","6 shots","7 shots","8 shots","9 shots","10 shots"]
    var cocktailamount = ["0 cocktails","1 cocktail","2 cocktails","3 cocktails","4 cocktails","5 cocktails","6 cocktails","7 cocktails","8 cocktails","9 cocktails","10 cocktails"]
    var beeramount = ["0 beers", "1 beer","2 beers","3 beers","4 beers","5 beers","6 beers","7 beers","8 beers","9 beers","10 beers"]
    var wineamount = ["0 glasses", "1 glass","2 glasses","3 glasses","4 glasses","5 glasses","6 glasses","7 glasses","8 glasses","9 glasses","10 glasses"]
    
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
    
  //  @IBAction func calculatePressed(_ sender: Any) {
       // text1.text
    }
    
// }
    
    
    
//}
// @IBOutlet weak var Button: UIButton!

// @IBOutlet weak var Label: UILabel!

// @IBAction func buttonPress(_ sender: Any) {

// Label.text = "yeah dude get medical help"
// override func viewDidLoad() {
//    super.viewDidLoad()
// Do any additional setup after loading the view, typically from a nib.
        
