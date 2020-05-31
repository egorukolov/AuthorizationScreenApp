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
        
    }
    

    @IBAction func logOutButtonPressed(_ sender: UIButton) {
    }
    
   
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
