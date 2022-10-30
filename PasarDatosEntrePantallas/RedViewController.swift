//
//  RedViewController.swift
//  PasarDatosEntrePantallas
//
//  Created by TEO on 30/10/22.
//

import UIKit

class RedViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var person: Person? // Basicamente esto es una variable auxiliar o variable de transición
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Optional binding
        if let personAux = self.person{ //Aquí basicamente se hace una instancia de person con el nombre personAux
            let fullName = "\(personAux.name) \(personAux.lastname)"
            //resultLabel.text = personAux.name
            //resultLabel.text = personAux.lastname
            resultLabel.text = fullName
        }
    }
    
}
