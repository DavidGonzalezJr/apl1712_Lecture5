//
//  ViewController.swift
//  apl1712_Lecture5
//
//  Created by David Gonzalez Jr on 12/1/17.
//  Copyright © 2017 David Gonzalez Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textLabel: UILabel!
    
    var theString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func putTextInLabel(sender: UIButton) {
        
        let pressedButton = sender.tag
        
        if let text = textField.text {
            theString = text
        }
        switch pressedButton {
        case 0:
            theString = textField.text ?? ""
        case 1:
            theString = theString.lowercased()
        case 2:
            theString = theString.uppercased()
        case 3:
            var characters = [Character] (theString)
            characters = characters.reversed()
            theString = String(characters)
        default:
            print("OOPS! This shouldn't have happened. Double check your storyboard to ensure that all tags are properly set.")
        }
       
        textLabel.text = theString
        
    }
}

