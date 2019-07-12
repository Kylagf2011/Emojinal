//
//  ViewController.swift
//  Emojinal
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["🙄" : "Sarcastic eye-roll", "🙃" : "Upside down face"]
    
    var customMessages = ["Sarcastic eye-roll" : ["Well, that worked.", "Good job.", "Maybe if you tried again."], "Upside down face" : ["Bee amazing!", "Purrfect!", "Doughnut give up!"] ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessage(sender: UIButton) {
        //Get messages to show up in a random order when the button is pressed
        
        let selectedEmotion = sender.titleLabel?.text
        
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[Int.random(in: 0 ... 2)]
        
        let alertController = UIAlertController(title: "Good Work", message: "\(emojiMessage!)", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
    

}

