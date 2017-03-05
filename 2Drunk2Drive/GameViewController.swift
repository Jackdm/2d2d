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
    }
    //variables
    @IBOutlet weak var buttonToPress: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    var timeLeft = 3
    var miliTime = 0
    var myTimer : Timer!
    var pressedTimer : Timer!
    var reactionTimes = [0, 0, 0, 0, 0]
    
    //functions
    override func viewDidLoad() {
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
            randomButton()
        }
        
    }
    
    func randomButton() {
        pressedTimer = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true) { _ in
            self.miliTime += 1
            self.timerLabel.text = String(self.miliTime)
            if self.buttonToPress.isTouchInside {
                self.reactionTimes[0] = self.miliTime
                self.pressedTimer.invalidate()
            }
        }
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
