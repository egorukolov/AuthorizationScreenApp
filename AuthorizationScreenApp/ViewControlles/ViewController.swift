//
//  ViewController.swift
//  AuthorizationScreenApp
//
//  Created by Egor Ukolov on 30.05.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func logInButtonPressed() {
        
        guard let inputText = userNameTextField.text, inputText != "User" else { return }
        
        
    }
    
    
    
    
    
    
    
    @IBAction func forgotNameButtonPressed() {
    }
    
    @IBAction func forgotPasswordButtonPressed() {
    }
    
}

