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
    
    func pickerVi
    
    
    
    @IBOutlet weak var Button: UIButton!
    
    @IBOutlet weak var Label: UILabel!
    
    @IBAction func buttonPress(_ sender: Any) {
        
        Label.text = "yeah dude get medical help"
        
        
    }

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
       
            
        }
        
  

}

