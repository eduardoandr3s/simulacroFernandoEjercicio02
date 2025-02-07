//
//  VotoModel.swift
//  simulacroFernandoEjercicio02
//
//  Created by Eduardo Segovia Roman on 7/2/25.
//

import Foundation

struct VotoModel{
    var nombreVotante: String;
    var nombrePersonaje: String;
    
    
    func toString() -> String{
        return "Votante: \(nombreVotante), Personaje: \(nombrePersonaje)"
    }
}
