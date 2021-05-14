//
//  PacienteFeminino.swift
//  DesafioPOO-N2
//
//  Created by Jonattan Moises Sousa on 14/05/21.
//

import Foundation

class PacienteFeminino: Paciente {
    let gestante: Int
    
    init(_ nome: String, _ dataNascimento: String, _ jaContaminado: Int, _ gestante: Int) {
        self.gestante = gestante
        super.init(nome, dataNascimento, jaContaminado)
    }
    override func verificaTempoVacinacao() -> String {
        if self.gestante == 1 {
//            return "Gestante \nVacinar-se IMEDIATAMENTE!"
            return "Vacinar-se IMEDIATAMENTE!"
        }
        return super.verificaTempoVacinacao()
    }
}
