//
//  ViewController.swift
//  DesafioPOO-N2
//
//  Created by Jonattan Moises Sousa on 14/05/21.
//

import UIKit

class ViewController: UIViewController {
//    let listaCadastrarPacientes: [[Any]] = []
    var listaPacientesCadastrados: [Paciente] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        inserePacientes()
        mostraDadosPacienteVacinacao()
    }

    func inserePacientes() {
        let maria = PacienteFeminino("Maria dos Santos", "09/03/1975", 0, 0)
        listaPacientesCadastrados.append(maria)
        let gloria = PacienteFeminino("Gloria Salvares", "09/03/1998", 0, 1)
        listaPacientesCadastrados.append(gloria)
        let lucio = Paciente("Lucio do Amaral", "10/01/1990", 1)
        listaPacientesCadastrados.append(lucio)
        
        let nelson = Paciente("Seu Nelson", "13/10/1935", 0)
        listaPacientesCadastrados.append(nelson)
        let pyetro = Paciente("Pyetro NewBoy", "13/10/2015", 0)
        listaPacientesCadastrados.append(pyetro)
    }
    func mostraDadosPacienteVacinacao() {
        for paciente in listaPacientesCadastrados {
            paciente.mostrarTempoVacinacao()
        }
    }
}

