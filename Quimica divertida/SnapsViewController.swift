//
//  SnapsViewController.swift
//  Quimica divertida
//
//  Created by Mac Tecsup on 13/11/17.
//  Copyright © 2017 Tecsup. All rights reserved.
//

import UIKit

class SnapsViewController: UIViewController {

    override func viewDidLoad(){
        super.viewDidLoad()
    }
    @IBAction func cerrarSesionTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
