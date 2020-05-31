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
    
    
    @IBAction func logInButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        
    }
    
    
    @IBAction func forgotNameButtonPressed() {
    }
    
    @IBAction func forgotPasswordButtonPressed() {
    }
    
    
    
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let destinationVC = tabBarController.viewControllers?.first as! ViewControllerOne
        destinationVC.login = userNameTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    
    
}
