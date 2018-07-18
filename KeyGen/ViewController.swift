//  ViewController.swift
//  KeyGen
//  Created by Aditya Bhatia on 2018-05-25.
//  Copyright © 2018 adbht. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    //Connecting all the outlets and actions needed from Main.storyboard
    @IBOutlet weak var keyNumber: UILabel!          //To indicate the "Password Length" user has chosen via slider input
    @IBOutlet weak var sliderOutlet: UISlider!      //Slider outlet is required to read the user input on password length
    @IBOutlet weak var lettersSwitch: UISwitch!     //To check if user has chosen to include letters in the password
    @IBOutlet weak var digitsSwitch: UISwitch!      //To check if user has chosen to include digits in the password
    @IBOutlet weak var symbolsSwitch: UISwitch!     //To check if user has chosen to include symbols in the password
    @IBOutlet weak var password: UILabel!           //This label will be replaced with a string containg the new password generated
    @IBOutlet weak var copyOutlet: UIButton!        //This outlet is only needed to keep this button hidden until the password is generated
    
    //Slider action function to change the value of KeyNumber outlet to the slider value
    @IBAction func sliderAction(_ sender: UISlider) {
        keyNumber.text = String(Int(sliderOutlet.value))
    }
    
    //Main function to control what to do after the user has pressed the "Generate" button
    @IBAction func generate(_ sender: Any) {
        var newKey : String = ""    //Defining the new password. This will be changed to the actual password after checking user configuration
        if lettersSwitch.isOn == false && digitsSwitch.isOn == false && symbolsSwitch.isOn == false { //Error check to see if user has switched off all 3 switches
            password.text = "Password cannot be generated without letters, digits, and symbols"
        } else if lettersSwitch.isOn == true && digitsSwitch.isOn == false && symbolsSwitch.isOn == false { //If user has only switched on letters
            let characters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
            for _ in 1...Int(sliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                newKey += "\(characters[randomIndex])"
            }
            password.text = newKey      //To replace the empty label with the new password text
            copyOutlet.isHidden = false //Giving user the option to copy their new password now that it has been generated
        } else if lettersSwitch.isOn == false && digitsSwitch.isOn == true && symbolsSwitch.isOn == false { //If user has only switched on Digits
            let characters = ["0","1","2","3","4","5","6","7","8","9"]
            for _ in 1...Int(sliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                newKey += "\(characters[randomIndex])"
            }
            password.text = newKey      //To replace the empty label with the new password text
            copyOutlet.isHidden = false //Giving user the option to copy their new password now that it has been generated
        } else if lettersSwitch.isOn == false && digitsSwitch.isOn == false && symbolsSwitch.isOn == true { //If user has only switched on Symbols
            let characters = ["`","~","!","@","#","$","%","^","&","*","(",")","-","_","=","+","[","{","]","}","\\","|",";",":","'","\"",",","<",".",">","/","?"]
            for _ in 1...Int(sliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                newKey += "\(characters[randomIndex])"
            }
            password.text = newKey      //To replace the empty label with the new password text
            copyOutlet.isHidden = false //Giving user the option to copy their new password now that it has been generated
        } else if lettersSwitch.isOn == true && digitsSwitch.isOn == true && symbolsSwitch.isOn == false { //If user has switched on Letters and Digits
            let characters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9"]
            for _ in 1...Int(sliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                newKey += "\(characters[randomIndex])"
            }
            password.text = newKey      //To replace the empty label with the new password text
            copyOutlet.isHidden = false //Giving user the option to copy their new password now that it has been generated
        } else if lettersSwitch.isOn == true && digitsSwitch.isOn == false && symbolsSwitch.isOn == true { //If user has switched on Letters and Symbols
            let characters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","`","~","!","@","#","$","%","^","&","*","(",")","-","_","=","+","[","{","]","}","\\","|",";",":","'","\"",",","<",".",">","/","?"]
            for _ in 1...Int(sliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                newKey += "\(characters[randomIndex])"
            }
            password.text = newKey      //To replace the empty label with the new password text
            copyOutlet.isHidden = false //Giving user the option to copy their new password now that it has been generated
        } else if lettersSwitch.isOn == false && digitsSwitch.isOn == true && symbolsSwitch.isOn == true { //If user has switched on Digits and Symbols
            let characters = ["0","1","2","3","4","5","6","7","8","9","`","~","!","@","#","$","%","^","&","*","(",")","-","_","=","+","[","{","]","}","\\","|",";",":","'","\"",",","<",".",">","/","?"]
            for _ in 1...Int(sliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                newKey += "\(characters[randomIndex])"
            }
            password.text = newKey      //To replace the empty label with the new password text
            copyOutlet.isHidden = false //Giving user the option to copy their new password now that it has been generated
        } else { //Finally, the only other possibility, if user has switched on all three switches
            let characters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9","`","~","!","@","#","$","%","^","&","*","(",")","-","_","=","+","[","{","]","}","\\","|",";",":","'","\"",",","<",".",">","/","?"]
            for _ in 1...Int(sliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                newKey += "\(characters[randomIndex])"
            }
            password.text = newKey      //To replace the empty label with the new password text
            copyOutlet.isHidden = false //Giving user the option to copy their new password now that it has been generated
        }
    }
    
    //This function is to ensure the new password is copied to clipboard after the 'Copy' button is pressed
    @IBAction func copyAction(_ sender: Any) {
        let pasteboard = UIPasteboard.general
        pasteboard.string = password.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
