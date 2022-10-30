//
//  BlueViewController.swift
//  PasarDatosEntrePantallas
//
//  Created by TEO on 30/10/22.
//

import UIKit

struct Person{
    let name:String
    let lastname:String
}

class BlueViewController: UIViewController {
    
    struct Const{
        static let segueIdentifier = "navegarHaciaRojo"
    }
    
    @IBOutlet weak var nameTextFiel: UITextField!
    @IBOutlet weak var lastnameTextFiel: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Pasar la información de myDataTextField al viewController Rojo
        // 1. Extraer la informacion de mi textField
        // 2. Pasar la informacion a el Label del viewController Rojo
        
        // Optional binding
        if let redViewController = segue.destination as? RedViewController{
            // Si se da la conversion entonces tengo acceso al RedViewController desde el azul
            
            // OptionalBinding, aquí haremos uno multiple
            if let name  = self.nameTextFiel?.text, let lastname = self.lastnameTextFiel?.text{
                redViewController.person = Person(name: name, lastname: lastname)
            }
            
            
        }
        
    }
    
}
