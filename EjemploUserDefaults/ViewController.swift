//
//  ViewController.swift
//  EjemploUserDefaults
//
//  Created by Anna Ruiz on 30/11/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtTexto: UITextField!
    @IBOutlet weak var lbResultado: UILabel!
    
    var manageUser:  ManagerUserDefaults!
   
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
        manageUser = ManagerUserDefaults()
    }

    @IBAction func btnGuardar(_ sender: Any) {
        guard let palabrita = txtTexto.text
        else{
            return
        }
        manageUser.guardarDato(texto: palabrita, clave: "PALABRITA")
        txtTexto.text = ""
    }
    
    @IBAction func btnMostrar(_ sender: Any) {
        lbResultado.text = manageUser.leerDato(clave: "PALABRITA")
    }
    
    
    @IBAction func btnBorrar(_ sender: Any) {
        manageUser.borrarDato(clave: "PALABRITA")
        lbResultado.text = ""
    }
}

