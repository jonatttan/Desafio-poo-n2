import UIKit

func formatDateVelho(_ dataEntrada: String) {
    let formatador = DateFormatter()
    formatador.dateFormat = "yyy-MM-dd"
    formatador.locale = Locale(identifier: "en_US_POSIX")
    guard let data = formatador.date(from: dataEntrada) else { return }
    print(data)
    let calendario = Calendar.current
    guard let idade = calendario.dateComponents([.year], from: data, to: Date()).year else { return }
    print(idade)
}
formatDateVelho("2000-04-13")

// Fuincional
func formatDate(_ dataEntrada: String) -> Date {
    let formatador = DateFormatter()
    formatador.dateFormat = "dd/MM/yyyy"
    formatador.locale = Locale(identifier: "en_US_POSIX")
    guard let data = formatador.date(from: dataEntrada) else { return Date() }
    return data
}
func getIdade(_ dataNascimento : String) -> Int {
    let nascimento = formatDate(dataNascimento)
    let calendario = Calendar.current
    guard let idade = calendario.dateComponents([.year], from: nascimento, to: Date()).year else {
        return 1000 }
    return idade
}

let idade = getIdade("10/06/2019")
print(idade)

