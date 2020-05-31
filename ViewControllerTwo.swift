//
//  ViewControllerTwo.swift
//  AuthorizationScreenApp
//
//  Created by Egor Ukolov on 31.05.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {

    @IBOutlet var userTextView: UITextView!
    
    
    let textMessage = """
Hello! I see you went to my profile.
\nWell, let's get acquainted
\nMy name is Egor. I am 24 years old. I was born in the Republic
of Tyva, Kyzyl city, but I have been living in Krasnoyarsk for 5 years
\nNow I work in sales, but I would like to become a IOS developer
\n... although I have a degree in design engineering
\nMy Hobbies are movies, videogame heartstone, football, and reading books
"""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userTextView.text = textMessage
       
    }
    

   
}
