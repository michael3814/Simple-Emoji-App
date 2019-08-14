//
//  ViewController.swift
//  Hello World
//
//  Created by Michael Chung on 7/28/19.
//  Copyright © 2019 MC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        
        var emojiDict = ["♠️" : "Spades",
                         "♣️" : "Clubs",
                         "♥️" : "Hearts",
                         "♦️" : "Diamonds"
        ]
        
        let selBtn = sender
        
        if let wordToLook = selBtn.titleLabel?.text {
            
            let meaning = emojiDict[wordToLook]
        
            let alertController = UIAlertController(title: "Emoji", message: meaning, preferredStyle: .alert)
        
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
            present(alertController, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

