//
//  ViewController.swift
//  UdemyChatApp
//
//  Created by Cristian Misael Almendro Lazarte on 10/28/18.
//  Copyright © 2018 Cristian Misael Almendro Lazarte. All rights reserved.
//

import UIKit
import Firebase;

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if Auth.auth().currentUser != nil {
            //el usuario ya está logeado
            self.performSegue(withIdentifier: "goToChat", sender: self)
        }
    }
}

