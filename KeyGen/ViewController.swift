//  ViewController.swift
//  KeyGen
//  Created by Aditya Bhatia on 2018-05-25.
//  Copyright © 2018 adbht. All rights reserved.

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var KeyNumber: UILabel!
    @IBOutlet weak var SliderOutlet: UISlider!
    @IBOutlet weak var LettersSwitch: UISwitch!
    @IBOutlet weak var DigitsSwitch: UISwitch!
    @IBOutlet weak var SymbolsSwitch: UISwitch!
    @IBOutlet weak var Password: UILabel!
    @IBOutlet weak var CopyOutlet: UIButton!
    
    @IBAction func SliderAction(_ sender: UISlider) {
        KeyNumber.text = "\(round(SliderOutlet.value))"
    }
    @IBAction func Generate(_ sender: Any) {
        var newKey : String = ""
        if LettersSwitch.isOn == false && DigitsSwitch.isOn == false && SymbolsSwitch.isOn == false {
            Password.text = "Password cannot be generated without letters, digits, and symbols"
        } else if LettersSwitch.isOn == true && DigitsSwitch.isOn == false && SymbolsSwitch.isOn == false {
            let characters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
            for i in 1...Int(SliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                if i == 1 {
                    newKey = "\(characters[randomIndex])"
                } else {
                    newKey += "\(characters[randomIndex])"
                }
            }
            Password.text = newKey
            CopyOutlet.isHidden = false
        } else if LettersSwitch.isOn == false && DigitsSwitch.isOn == true && SymbolsSwitch.isOn == false {
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
            CopyOutlet.isHidden = false
        } else if LettersSwitch.isOn == false && DigitsSwitch.isOn == false && SymbolsSwitch.isOn == true {
            let characters = ["!","@","#","$","%","^","&","*","(",")"]
            for i in 1...Int(SliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                if i == 1 {
                    newKey = "\(characters[randomIndex])"
                } else {
                    newKey += "\(characters[randomIndex])"
                }
            }
            Password.text = newKey
            CopyOutlet.isHidden = false
        } else if LettersSwitch.isOn == true && DigitsSwitch.isOn == true && SymbolsSwitch.isOn == false {
            let characters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9"]
            for i in 1...Int(SliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                if i == 1 {
                    newKey = "\(characters[randomIndex])"
                } else {
                    newKey += "\(characters[randomIndex])"
                }
            }
            Password.text = newKey
            CopyOutlet.isHidden = false
        } else if LettersSwitch.isOn == true && DigitsSwitch.isOn == false && SymbolsSwitch.isOn == true {
            let characters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","!","@","#","$","%","^","&","*","(",")"]
            for i in 1...Int(SliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                if i == 1 {
                    newKey = "\(characters[randomIndex])"
                } else {
                    newKey += "\(characters[randomIndex])"
                }
            }
            Password.text = newKey
            CopyOutlet.isHidden = false
        } else if LettersSwitch.isOn == false && DigitsSwitch.isOn == true && SymbolsSwitch.isOn == true {
            let characters = ["0","1","2","3","4","5","6","7","8","9","!","@","#","$","%","^","&","*","(",")"]
            
            for i in 1...Int(SliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                if i == 1 {
                    newKey = "\(characters[randomIndex])"
                } else {
                    newKey += "\(characters[randomIndex])"
                }
            }
            Password.text = newKey
            CopyOutlet.isHidden = false
        } else if LettersSwitch.isOn == true && DigitsSwitch.isOn == true && SymbolsSwitch.isOn == true {
            let characters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","!","@","#","$","%","^","&","*","(",")"]
            
            for i in 1...Int(SliderOutlet.value) {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                if i == 1 {
                    newKey = "\(characters[randomIndex])"
                } else {
                    newKey += "\(characters[randomIndex])"
                }
            }
            Password.text = newKey
            CopyOutlet.isHidden = false
        }
    }
    @IBAction func CopyAction(_ sender: Any) {
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
