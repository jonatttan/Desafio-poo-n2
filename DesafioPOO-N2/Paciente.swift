//
//  Paciente.swift
//  DesafioPOO-N2
//
//  Created by Jonattan Moises Sousa on 14/05/21.
//

import Foundation

class Paciente {
    let nome: String
    let dataNascimento: String
    let jaContaminado: Int
    
    init(_ nome: String, _ dataNascimento: String, _ jaContaminado: Int) {
        self.nome = nome
        self.dataNascimento = dataNascimento
        self.jaContaminado = jaContaminado
    }
    func mostrarTempoVacinacao() {
        print("")
        print("Paciente: \(self.nome)")
        print("Idade: \(getIdade()) anos")
//        print(self is PacienteFeminino ? "Feminino" : "Masculino")
        print(verificaTempoVacinacao())
    }
    func verificaTempoVacinacao() -> String {
        var adicionalDeDias = 0
        let idade = getIdade()
        if idade > 70 {
            return "Vacinar-se IMEDIATAMENTE!"
        }
        else {
            if self.jaContaminado == 1 {
                adicionalDeDias = 30
            }
            if idade > 59 && idade < 71 {
                return "Vacinar-se em \(adicionalDeDias + 30) dias."
            }
            else if idade > 49 && idade < 60 {
                return "Vacinar-se em \(adicionalDeDias + 60) dias."
            }
            else if idade > 29 && idade < 50 {
                return "Vacinar-se em \(adicionalDeDias + 90) dias."
            }
            else if idade > 19 && idade < 30 {
                return "Vacinar-se em \(adicionalDeDias + 120) dias."
            }
            else if idade > -1 && idade < 20 {
                return "Vacinar-se em \(adicionalDeDias + 150) dias."
            }
        }
        return "Problema com idade."
    }
    func getIdade() -> Int {
        let nascimento = formatDate(self.dataNascimento)
        let calendario = Calendar.current
        guard let idade = calendario.dateComponents([.year], from: nascimento, to: Date()).year else {
            return 1000 }
        return idade
    }
    func formatDate(_ dataEntrada: String) -> Date {
        let formatador = DateFormatter()
        formatador.dateFormat = "dd/MM/yyyy"
        formatador.locale = Locale(identifier: "en_US_POSIX")
        guard let data = formatador.date(from: dataEntrada) else { return Date() }
        return data
    }
}
