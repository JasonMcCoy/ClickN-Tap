//
//  ViewController.swift
//  ClickN'Tap
//
//  Created by Jason McCoy on 4/11/16.
//  Copyright © 2016 Jason McCoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // This is the logo on the first screen
    @IBOutlet weak var tapperLogo: UIImageView!

    // Label that says "How many clicks to win!?"
    @IBOutlet weak var labelOnHomeScreen: UITextField!
    
    // Play Button on the first screen
    @IBOutlet weak var playButtonOnHomeScreen: UIButton!
    
    // COIN Button on second screen
    @IBOutlet weak var coinButtonOnSecondScreen: UIButton!
    
    // Shows the current amount of clicks on the second screen
    @IBOutlet weak var clickCounterOnSecondScreen: UILabel!
    
    
    // Play Button on the first screen FUNCTION
    @IBAction func playButtonOnHomeScreenAction(sender: AnyObject) {
        tapperLogo.hidden = true
        labelOnHomeScreen.hidden = true
        playButtonOnHomeScreen.hidden = true
        
        coinButtonOnSecondScreen.hidden = false
        clickCounterOnSecondScreen.hidden = false
    }
    
    // COIN Button on second screen FUNCTION
    @IBAction func coinButtonOnSecondScreenAction(sender: AnyObject) {
        
    }
    

}

