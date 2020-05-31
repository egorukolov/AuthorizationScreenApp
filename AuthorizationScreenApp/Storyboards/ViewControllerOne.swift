//
//  ViewControllerOne.swift
//  AuthorizationScreenApp
//
//  Created by Egor Ukolov on 31.05.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import UIKit

class ViewControllerOne: UIViewController {

    
    @IBOutlet var userLabel: UILabel!
    
    var login: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = self.login else { return }
        
        userLabel.text = "Welcome, \(login)!"
        userLabel.textColor = .systemBlue
        
    }
    

    @IBAction func logOutButtonPressed(_ sender: UIButton) {
    }
    
}
