//
//  ManagerUserDefaults.swift
//  EjemploUserDefaults
//
//  Created by Anna Ruiz on 30/11/2023.
//

import UIKit

class ManagerUserDefaults: NSObject {
    func guardarDato(texto: String, clave: String){
        UserDefaults.standard.set(texto, forKey: clave)
        UserDefaults.standard.synchronize()
    }
    
    
    func leerDato(clave:String) -> String {
        guard let dato: String = (UserDefaults.standard.value(forKey: clave) as? String)
        
        else{
            return "La clave no existe"
        }
        return dato
        
    }
    
    func borrarDato(clave: String){
        UserDefaults.standard.removeObject(forKey: clave)
        UserDefaults.standard.synchronize()
    }

}
