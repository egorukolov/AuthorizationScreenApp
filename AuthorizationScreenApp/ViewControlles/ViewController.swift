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
    
    @IBAction func logInButtonPressed(_ sender: UIButton) {
      
        let uniqeUser = User(login: "username", password: "password")
        
        if (userNameTextField.text == uniqeUser.login &&
            passwordTextField.text == uniqeUser.password) {
            
            performSegue(withIdentifier: "detailSegue", sender: nil)
            
        } else {
            
            showAlertIfProblemWithEntrance(with: "Oops!",
                                           and: "Invalid username and / or password")
            
            userNameTextField.text = ""
            passwordTextField.text = ""
        }
    }
    
    @IBAction func  unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func forgotNameButtonPressed() {
        
        showAlertIfForgot(with: "Bazinga!",
                          and: "You'r username is 'username'")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        
        showAlertIfForgot(with: "Bazinga!",
                          and: "You'r password is 'password'")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let destinationVC = tabBarController.viewControllers?.first as! ViewControllerOne
        destinationVC.login = userNameTextField.text
    }
}

    // MARK: UIAlertController

extension ViewController {
    
    private func showAlertIfForgot(with title: String, and massage: String) {
        
        let alert = UIAlertController(title: title,
                                      message: massage,
                                      preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok",
                                     style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
    
    private func showAlertIfProblemWithEntrance(with title: String, and massage: String) {
        
        let alert = UIAlertController(title: title,
                                      message: massage,
                                      preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok",
                                     style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
