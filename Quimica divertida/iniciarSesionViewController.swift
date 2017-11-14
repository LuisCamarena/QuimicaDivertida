//
//  iniciarSesionViewController.swift
//  Quimica divertida
//
//  Created by Mac Tecsup on 13/11/17.
//  Copyright © 2017 Tecsup. All rights reserved.
//

import UIKit
import Firebase

class iniciarSesionViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail:emailTextField.text!, password: passwordTextField.text!, completion: { (user, error) in
            print("Intentamos iniciar session")
            if error != nil {
                print("Tenemos el siguente error:\(error)")
                Auth.auth().createUser(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!, completion: { (user, error) in
                    print("Intentamos crearun usuario")
                    if error != nil {
                        print("Tenemos el siguente error:\(error)")
                    }else{
                        print("El usuario fue creado existosamente")
                    }
                })
            }else{
                print("Inicio de sesión exitoso")
            }
        })
    }

}


