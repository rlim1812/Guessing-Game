//
//  ViewController.swift
//  Guessing Game
//
//  Created by Ryan Lim on 7/6/16.
//  Copyright © 2016 Ryan Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let numberOfHands = Int(arc4random_uniform(5)) + 1
    
    
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var Response: UILabel!
    
    @IBAction func ActionButton(sender: AnyObject) {
        
        let numText = Int(TextField.text!)!
        
        if numText == numberOfHands {
            Response.text = "Hurray! You chose the right number!"
        } else {
            Response.text = "Sorry, that is the wrong number. Try again."
        }
        

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

