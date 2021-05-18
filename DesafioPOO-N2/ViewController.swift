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
        cadastroMassivo()
        mostraDadosPacienteVacinacao(listaPacientesCadastrados)
    }
    func cadastroMassivo() {
        listaPacientesCadastrados = CadastroEmMassa().cadastro(lista: lista)
    }
    func mostraDadosPacienteVacinacao(_ lista: [Paciente]) {
        if lista.count < 1 {
            print("** Sem dados para exibição **")
        }
        for paciente in listaPacientesCadastrados {
            paciente.mostrarTempoVacinacao()
        }
    }
}
