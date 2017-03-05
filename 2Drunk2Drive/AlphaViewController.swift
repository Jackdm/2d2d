//
//  AlphaViewController.swift
//  2Drunk2Drive
//
//  Created by Jack McCoy on 3/5/17.
//  Copyright © 2017 Jack McCoy. All rights reserved.
//

import UIKit

class AlphaViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var zyxTextField: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    var score : Int!
    var userInput : String!
    var wrong = 0
    var myTimer : Timer!
    var time = 5
    

    var bAlphabet = ["z", "y", "x", "w", "v", "u", "t", "s", "r", "q", "p", "o", "n", "m", "l", "k", "j", "i", "h", "g", "f", "e", "d", "c", "b", "a"]
    var userBAlphabet = ["!", "!", "!", "!", "!", "!", "!", "!", "!", "!", "!", "!", "!", "!", "!", "!", "!", "!", "!", "!", "!", "!", "!", "!", "!", "!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zyxTextField.delegate = self
        continueButton.isHidden = true
        // Do any additional setup after loading the view.
        myTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(AlphaViewController.countDown), userInfo: nil, repeats: true)
    }
    
    func countDown() {
        time -= 1
        timerLabel.text = "\(String(time))"
        if (time <= 0) {
            myTimer.invalidate()
            continueButton.isHidden = false
            compareToAlphabet()
        }
    }

    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        userInput = zyxTextField.text
        return true;
    }
    
    func compareToAlphabet() {
       /* for i in 0...25 {
            let index = userInput.index(userInput.startIndex, i)
            let userChar = userInput[index]
            if (bAlphabet[i] != String(userChar)) {
                wrong += 1
            }
        }*/
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


