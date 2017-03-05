//
//  GameViewController.swift
//  2Drunk2Drive
//
//  Created by Megan Kaye on 3/5/17.
//  Copyright © 2017 Jack McCoy. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    //give a starting timer for three seconds
    //load a button at a random place, start milisecond timer
    //if clicks, button appears at another random place
    //repeat 5 times
    @IBAction func buttonPressed(_ sender: Any) {
        randomButton(i: buttonCount)
    }
    
    //variables
    @IBOutlet weak var buttonToPress: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var leftConstraint: NSLayoutConstraint!
    var timeLeft = 3
    var miliTime = 0
    var myTimer : Timer!
    var pressedTimer : Timer!
    var reactionTimes = [0, 0, 0, 0, 0]
    var newButtonX: CGFloat?
    var newButtonY: CGFloat?
    var buttonCount = 0
    
    //functions
    override func viewDidLoad() {
        buttonToPress.isHidden = true
        numberLabel.text = "3"
        super.viewDidLoad()
        myTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(GameViewController.countUp), userInfo: nil, repeats: true)
        
        
        // Do any additional setup after loading the view.
    }
    
    func countUp() {
        timeLeft -= 1
        numberLabel.text = "\(timeLeft)"
        if timeLeft == 0 {
            myTimer.invalidate()
            buttonCall()
            numberLabel.text = ""
        }
        
    }
    
    func buttonCall() {
        buttonToPress.isHidden = false
        pressedTimer = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true) { _ in
            self.miliTime += 1
            self.timerLabel.text = String(self.miliTime)
        }
        randomButton(i: buttonCount)
    }
    
    func randomButton(i: Int) {
        if (self.buttonCount < 5) {
            self.reactionTimes[i] = self.miliTime
            print(self.miliTime)
            self.miliTime = 0
            self.buttonCount += 1
            moveButton(button: buttonToPress)
        } else {
            pressedTimer.invalidate()
            print(reactionTimes)
            //call something
        }
    }
    
    @IBAction func moveButton(button: UIButton) {
        // Find the button's width and height
        let buttonWidth = button.frame.width
        let buttonHeight = button.frame.height
        
        
        // Find the width and height of the enclosing view
        let viewWidth = button.superview!.bounds.width
        let viewHeight = button.superview!.bounds.height
        
        // Compute width and height of the area to contain the button's center
        let xwidth = viewWidth - buttonWidth
        let yheight = viewHeight - buttonHeight
        
        // Generate a random x and y offset
        let xoffset = CGFloat(arc4random_uniform(UInt32(xwidth)))
        let yoffset = CGFloat(arc4random_uniform(UInt32(yheight)))
        
        // Offset the button's center by the random offsets.
        leftConstraint.constant = xoffset + buttonWidth / 2
        topConstraint.constant = yoffset + buttonHeight / 2
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
