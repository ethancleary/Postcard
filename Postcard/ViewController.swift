//
//  ViewController.swift
//  Postcard
//
//  Created by Ethan Cleary on 11/09/2014.
//  Copyright (c) 2014 IdeaSpace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Apples implementation of this class which is the super class
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //When a function is called we can pass it information i.e. parameter 'sender'
        //Normall you would created a seperate function for each button

        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        
        //A function, is simply a chunk of code that runs when we call it somewhere else
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        //Unlike our label and textFields, Buttons have a constrol state i.e.'normal' or 'selected'
        //To set the title of our button, we need to pass in a string as an argument for what the title will be, as well as, a control state that will determine when the title changes
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
    }

}

