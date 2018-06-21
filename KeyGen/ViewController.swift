//  ViewController.swift
//  KeyGen
//  Created by Aditya Bhatia on 2018-05-25.
//  Copyright © 2018 adbht. All rights reserved.

import UIKit
import Foundation //This is needed to round off the the slider value and display a whole number using round()

class ViewController: UIViewController {
    
    //Connecting all the outlets and actions needed from Main.storyboard
    @IBOutlet weak var KeyNumber: UILabel!                                  //This is the float number that is displayed on the right of the "Password Length" to indicate what length the user has chosen 
    @IBOutlet weak var SliderOutlet: UISlider!                              //Slider outlet is required to read the user input on password length
    @IBOutlet weak var LettersSwitch: UISwitch!                             //To check if user has chosen to include letters in the password
    @IBOutlet weak var DigitsSwitch: UISwitch!                              
    @IBOutlet weak var SymbolsSwitch: UISwitch!
    @IBOutlet weak var Password: UILabel!
    @IBOutlet weak var CopyOutlet: UIButton!
    @IBAction func SliderAction(_ sender: UISlider) {
        KeyNumber.text = "\(round(SliderOutlet.value))" //This action will change the value of KeyNumber outlet to the slider value.
    }
    @IBAction func Generate(_ sender: Any) {
        var newKey : String = "" //Defining the new password. This will be changed to an actual password after checking user configuration.
        if LettersSwitch.isOn == false && DigitsSwitch.isOn == false && SymbolsSwitch.isOn == false { //Error check to see if user has switched off all 3 switches
            Password.text = "Password cannot be generated without letters, digits, and symbols"
        } else if LettersSwitch.isOn == true && DigitsSwitch.isOn == false && SymbolsSwitch.isOn == false { //If user has only switched on letters
            let characters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
            for i in 1...Int(SliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                if i == 1 {
                    newKey = "\(characters[randomIndex])"
                } else {
                    newKey += "\(characters[randomIndex])"
                }
            }
            Password.text = newKey
            CopyOutlet.isHidden = false //Giving user the option to copy their new password now that it has been generated.
        } else if LettersSwitch.isOn == false && DigitsSwitch.isOn == true && SymbolsSwitch.isOn == false { // If user has only switched on Digits
            let characters = ["0","1","2","3","4","5","6","7","8","9"]
            for i in 1...Int(SliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                if i == 1 {
                    newKey = "\(characters[randomIndex])"
                } else {
                    newKey += "\(characters[randomIndex])"
                }
            }
            Password.text = newKey
            CopyOutlet.isHidden = false //Giving user the option to copy their new password now that it has been generated.
        } else if LettersSwitch.isOn == false && DigitsSwitch.isOn == false && SymbolsSwitch.isOn == true { // If user has only switched on Symbols
            let characters = ["`","~","!","@","#","$","%","^","&","*","(",")","-","_","=","+","[","{","]","}","\\","|",";",":","'","\"",",","<",".",">","/","?"]
            for i in 1...Int(SliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                if i == 1 {
                    newKey = "\(characters[randomIndex])"
                } else {
                    newKey += "\(characters[randomIndex])"
                }
            }
            Password.text = newKey
            CopyOutlet.isHidden = false //Giving user the option to copy their new password now that it has been generated.
        } else if LettersSwitch.isOn == true && DigitsSwitch.isOn == true && SymbolsSwitch.isOn == false { // If user has switched on Letters and Digits
            let characters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9"]
            for i in 1...Int(SliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                if i == 1 {
                    newKey = "\(characters[randomIndex])"
                } else {
                    newKey += "\(characters[randomIndex])"
                }
            }
            Password.text = newKey
            CopyOutlet.isHidden = false //Giving user the option to copy their new password now that it has been generated.
        } else if LettersSwitch.isOn == true && DigitsSwitch.isOn == false && SymbolsSwitch.isOn == true { // If user has switched on Letters and Symbols
            let characters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","`","~","!","@","#","$","%","^","&","*","(",")","-","_","=","+","[","{","]","}","\\","|",";",":","'","\"",",","<",".",">","/","?"]
            for i in 1...Int(SliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                if i == 1 {
                    newKey = "\(characters[randomIndex])"
                } else {
                    newKey += "\(characters[randomIndex])"
                }
            }
            Password.text = newKey
            CopyOutlet.isHidden = false //Giving user the option to copy their new password now that it has been generated.
        } else if LettersSwitch.isOn == false && DigitsSwitch.isOn == true && SymbolsSwitch.isOn == true { // If user has switched on Digits and Symbols
            let characters = ["0","1","2","3","4","5","6","7","8","9","`","~","!","@","#","$","%","^","&","*","(",")","-","_","=","+","[","{","]","}","\\","|",";",":","'","\"",",","<",".",">","/","?"]
            
            for i in 1...Int(SliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                if i == 1 {
                    newKey = "\(characters[randomIndex])"
                } else {
                    newKey += "\(characters[randomIndex])"
                }
            }
            Password.text = newKey
            CopyOutlet.isHidden = false //Giving user the option to copy their new password now that it has been generated.
        } else { // If user has switched on all three switches
            let characters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9","`","~","!","@","#","$","%","^","&","*","(",")","-","_","=","+","[","{","]","}","\\","|",";",":","'","\"",",","<",".",">","/","?"]
            
            for i in 1...Int(SliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                if i == 1 {
                    newKey = "\(characters[randomIndex])"
                } else {
                    newKey += "\(characters[randomIndex])"
                }
            }
            Password.text = newKey
            CopyOutlet.isHidden = false //Giving user the option to copy their new password now that it has been generated.
        }
    }
    @IBAction func CopyAction(_ sender: Any) { //To copy the new password to the clipboard.
        let pasteboard = UIPasteboard.general
        pasteboard.string = Password.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
