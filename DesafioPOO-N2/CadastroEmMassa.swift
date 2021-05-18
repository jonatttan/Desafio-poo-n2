//
//  CadastroEmMassa.swift
//  DesafioPOO-N2
//
//  Created by Jonattan Moises Sousa on 17/05/21.
//

import Foundation

public class CadastroEmMassa {
    
    func cadastro(lista: [[Any]]) -> [Paciente]{
        var listaSaida: [Paciente] = []
        for registro in lista {
            guard let sexo = registro[0] as? String else { return listaSaida }
            guard let nome = registro[1] as? String else { return listaSaida }
            guard let dataNasc = registro[2] as? String else { return listaSaida }
            guard let jaContaminado = registro[3] as? Int else { return listaSaida }
            guard let gestante = registro[4] as? Int else { return listaSaida }
            if sexo == "F" || sexo == "f" {
                listaSaida.append(PacienteFeminino(nome, dataNasc, jaContaminado, gestante))
            } else {
                listaSaida.append(Paciente(nome, dataNasc, jaContaminado))
            }
        }
        return listaSaida
    }
}
