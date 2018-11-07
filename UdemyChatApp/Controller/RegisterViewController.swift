//
//  RegisterViewController.swift
//  UdemyChatApp
//
//  Created by Cristian Misael Almendro Lazarte on 10/28/18.
//  Copyright © 2018 Cristian Misael Almendro Lazarte. All rights reserved.
//

import UIKit
import FirebaseAuth


class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    @IBOutlet weak var swichtConditions: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func registerPressed(_ sender: UIButton) {
        
        guard swichtConditions.isOn else {
            //            TODO: Mostrar una alerta para que el usuario acepte la contraseña
            return
            
        }
        
        guard passwordTextField.text == repeatPasswordTextField.text else {
            //            TODO: Mostrar una alerta para las contrasenias no coinciden
            return;
        }
        
        guard let email = self.emailTextField.text,let password = self.passwordTextField.text else {
            //            TODO: Mostrar error de email
            return;
            
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { (AuthDataResult, Error) in
            
            
        }
//        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
//            if error == nil{
//                print("Se logeo!");
//                self.performSegue(withIdentifier: "fromRegistryToChat", sender: self);
//            }
//            else{
//                print(error);
//            }
//        }
    }
}
