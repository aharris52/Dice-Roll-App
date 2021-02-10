//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Andrew Harris on 02 Feb 2021
//
//  This project was for intro to the Swift programming
//  language. Introducing/ Applying:
//  * custom app icons
//  * background images
//  * arrays/ randomization
//

import UIKit

class ViewController: UIViewController {

    // Image for left hand die
    // IBOutlet is for refrencing UI elements in code
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //print("button got tapped")
        
        // "let" keyword for declaring constants
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        // ALTERNATE SYNATX:
        // diceArray.randomElement()
        // both produce a random image from the diceArray
        // clearly the "in" method allows for greater specificity
        
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
        /**
            More notes on range operator
               * random( in: 0 . . . 5 )
                this is an inclusive operator
         
             * random( in : 0 . . < 5)
                exclusive operator
         
             * 
         
         */
        
    }
}

