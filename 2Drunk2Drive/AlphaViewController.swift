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
    var time = 30
    

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
            zyxTextField.isUserInteractionEnabled = false
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
       for i in 0...25 {
        if (userInput == nil) {
            wrong += 26
            break
        }
        else if (userInput.characters.count <= i) {
            wrong += (26 - i)
            break
        } else {
            let index = userInput.index(userInput.startIndex, offsetBy: i)
            let userChar = userInput[index]
            if (bAlphabet[i] != String(userChar)) {
                wrong += 1
                }
            }
        }
        print("wrong:\(wrong)")
        judgement()
        
    }
    
    func judgement() {
        if wrong > 15 {
            score = 3
        } else if wrong > 10 {
            score = 1
        } else {
            score = 0
        }
        print("firstScore:\(score)")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "buttonPressSegue" {
            let nextVC = segue.destination as! GameViewController
            nextVC.score2 = score
        }
    }


}


