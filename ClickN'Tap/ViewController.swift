//
//  ViewController.swift
//  ClickN'Tap
//
//  Created by Jason McCoy on 4/11/16.
//  Copyright © 2016 Jason McCoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Properties
    var maxTaps = 0
    var currentTaps = 0
    

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
        
        // If a user types in something, activate the function
        if labelOnHomeScreen.text != nil && labelOnHomeScreen.text != "" {
            tapperLogo.hidden = true
            labelOnHomeScreen.hidden = true
            playButtonOnHomeScreen.hidden = true
            
            coinButtonOnSecondScreen.hidden = false
            clickCounterOnSecondScreen.hidden = false
            
            maxTaps = Int(labelOnHomeScreen.text!)!
            currentTaps = 0
            
            updatingTheTapsLabel() // Displays current taps on screen
        }
        
    }
    
    // COIN Button on second screen FUNCTION
    @IBAction func coinButtonOnSecondScreenAction(sender: AnyObject) {
        currentTaps += 1
        updatingTheTapsLabel()
        
        if isGameOver() {
            restartGame()
        }
      }
   
    func restartGame() {
        maxTaps = 0
        labelOnHomeScreen.text = ""
        
        tapperLogo.hidden = false
        labelOnHomeScreen.hidden = false
        playButtonOnHomeScreen.hidden = false
        
        coinButtonOnSecondScreen.hidden = true
        clickCounterOnSecondScreen.hidden = true
  
    }

    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        }
        else {
            return false
        }
    }
    
    
    // Displays current taps on screen
    func updatingTheTapsLabel() {
        clickCounterOnSecondScreen.text = "\(currentTaps) Taps"
    }

}

