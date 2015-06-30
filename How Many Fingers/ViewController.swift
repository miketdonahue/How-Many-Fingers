//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Michael Donahue on 6/30/15.
//  Copyright (c) 2015 Michael Donahue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var guessInput: UITextField!
    
    @IBOutlet var result: UILabel!
    
    @IBOutlet var newGame: UIButton!
    
    var computerGuess = Int(arc4random_uniform(6))
    
    @IBAction func guessButton(sender: AnyObject) {
        var guess = guessInput.text.toInt()
        
        if guess < 0 || guess > 5 {
            result.text = "You must enter a number between 0 and 5."
        } else if guess != computerGuess {
            result.text = "You guessed incorrectly."
        } else {
            result.text = "You guessed correct!"
            newGame.hidden = false
        }
    }
    
    @IBAction func newGame(sender: AnyObject) {
        computerGuess = Int(arc4random_uniform(6))
        guessInput.text = ""
        result.text = ""
        newGame.hidden = true
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

