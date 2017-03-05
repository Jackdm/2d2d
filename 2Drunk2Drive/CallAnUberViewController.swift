//
//  CallAnUberViewController.swift
//  2Drunk2Drive
//
//  Created by Jack McCoy on 3/5/17.
//  Copyright © 2017 Jack McCoy. All rights reserved.
//

import UIKit

class CallAnUberViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPress(_ sender: Any) {
        
        
        open(scheme:"https://m.uber.com/ul/?client_id=smB4bBIsGuiiWaBec5_TKJLehW7qdzkJ&action=setPickup&pickup[latitude]=37.775818&pickup[longitude]=-122.418028&pickup[nickname]=UberHQ&pickup[formatted_address]=1455%20Market%20St%2C%20San%20Francisco%2C%20CA%2094103&dropoff[latitude]=37.802374&dropoff[longitude]=-122.405818&dropoff[nickname]=Coit%20Tower&dropoff[formatted_address]=1%20Telegraph%20Hill%20Blvd%2C%20San%20Francisco%2C%20CA%2094133&product_id=a1111c8c-c720-46c3-8534-2fcdd730040d&link_text=View%20team%20roster&partner_deeplink=partner%3A%2F%2Fteam%2F9383")
        
        
        
        
        
    }
    
    
    
    
    
    func open(scheme: String) {
        
        if let url = URL(string: scheme) {
            
            if #available(iOS 10, *) {
                
                UIApplication.shared.open(url, options: [:],
                                          
                                          completionHandler: {
                                            
                                            (success) in
                                            
                                            print("Open \(scheme): \(success)")
                                            
                })
                
            } else {
                
                let success = UIApplication.shared.openURL(url)
                
                print("Open \(scheme): \(success)")
                
            }
            
        }
        
    }
    

        
        
        
    }
    




