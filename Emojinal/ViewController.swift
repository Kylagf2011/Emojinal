//
//  ViewController.swift
//  Emojinal
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessage(sender: UIButton) {
        //Get messages to show up in a random order when the button is pressed
        let alertController = UIAlertController(title: "Good Work", message: "Well, that was good", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func showMessageTwo(sender: UIButton) {
        //Get messages to show up in a random order when the button is pressed
        let alertController = UIAlertController(title: "Funny, right", message: "Bee the best you you can be.", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }

}

