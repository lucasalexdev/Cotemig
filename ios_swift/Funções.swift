import UIKit

/// Recebe dois parâmetros inout e faz a troca de valores entre eles.
func trocarValores(_ numero1: inout Int, _ numero2: inout Int) {
    let aux = numero1
    numero1 = numero2
    numero2 = aux
}

var incremento = 0
func funcaoRecursiva() {
    print(incremento)
    incremento += 1
    if incremento < 10 {
        funcaoRecursiva()
    }
}

funcaoRecursiva()
print("Incremento final: \(incremento)")

// MARK: - FUNCTIONS

// Assinatura de uma função: nome, paramêtros (nome, tipo) e o retorno.

/// Função que não recebe nenhum parâmetro e não retorna nenhum valor.
func horarioLimite() {
    print("minhaFuncao()")
}

/// Funcão que recebe uma `String` como parâmetro e não retorna nenhum valor.
func minhaFuncao(primeiroParametro: String) {
    print("minhaFuncao(\(primeiroParametro))")
}

/// Funcão que recebe uma `String` e um `Int` como parâmetro e não retorna uma `String`.
func minhaFuncao(primeiroParametro: String, segundoParametroInteiro: Int) -> String {
    return "\(primeiroParametro) e \(segundoParametroInteiro)"
}

let retornoDafuncao = minhaFuncao(primeiroParametro: "Teste função", segundoParametroInteiro: 10)
print(retornoDafuncao)

/// Funcão que recebe uma `String` e um `Int` como parâmetro e não retorna uma `String` opcional.
func minhaFuncao(primeiroParametro: String, segundoParametro: Int) -> String? {
    return nil
}

/// Função que recebe uma `String` (com um label de argumento 'comTexto') como parâmetro e retorna uma `String`.
func minhaFuncao(comTexto texto: String) -> String {
    return texto
}

/// Recebe uma `String` (omitindo o label de argumento) como parâmetro e retorna uma `String`.
func minhaFuncao(_ texto: String) -> String {
    return texto
}

/// Recebe um número como parâmetro (com um valor default de 0) e não retorna nenhum valor.
func minhaFuncaoComNumero(numero: Int = 0) {
    print("minhaFuncaoComNumero(\(numero))")
}

/// Recebe uma `Int...` (parâmetro variádico) como parâmetro e não retorna nenhum valor`.
func minhaFuncaoComNumero(numeros: Int...) {
    for numero in numeros {
        print("minhaFuncaoComNumero(\(numero))")
    }
}

/// Recebe dois parâmetros inout e faz a troca de valores entre eles.
func trocarValores(_ numero1: inout Int, _ numero2: inout Int) {
    let aux = numero1
    numero1 = numero2
    numero2 = aux
}

/// Recebe uma funçao como parâmetro, esta função callback recebe uma `String`e um `Int` e tem o retorno Void.
func minhaFuncaoComFuncao(callback: (String, Int) -> Void) {
    // Executa algum trabalho...
    
    /// Verifica alguma condição
//    if true {
        callback("Login com sucesso", 200)
//    } else {
        callback("Falha ao logar", 401)
//    }
}

func minhaFuncaoPai(numeroPai: Int) {
    
    func minhaFuncaoInterna() {
        print("minhaFuncaoInterna()")
    }
    
    func minhaFuncaoInternaComNumero(numero: Int) {
        print("minhaFuncaoInternaComNumero(numero: \(numero))")
    }
    
    minhaFuncaoInterna()
    minhaFuncaoInternaComNumero(numero: numeroPai)
}

//minhaFuncaoPai(numeroPai: 12)

/// Funções no Swift são tratados como First Class Citizen

var nomeVariavel: Int = 0

var funcao: (String) -> Void

var funcaoInteiro: (Int, Int) -> Int

//minhaFuncao()
//
//minhaFuncao(comTexto: "texto")
//
//minhaFuncao("asd")

//minhaFuncaoComNumero(numero: 10)
//
//minhaFuncaoComNumero()
//
//minhaFuncaoComNumero(numeros: 1, 2, 3, 4)
//
//var numero1: Int = 1
//var numero2: Int = 2
//trocarValores(&numero1, &numero2)
//print("Print depois da chamada da função")
//print("Número 1: \(numero1)")
//print("Número 2: \(numero2)")
//
//minhaFuncaoComFuncao { (mensagem, statusCode) in
//    print(mensagem)
//}

// MARK: - CLOSURES

var funcaoString: (String) -> Void = { parametroString in
    print("Parâmetro recebido: \(parametroString)")
}

//funcaoString("Texto")

funcaoString = { parametro in
    print("Quantidade de chars em \(parametro): \(parametro.count)")
}

//funcaoString("Texto")

//func funcaoString(parametroString: String) {
//    print("Parâmetro recebido: \(parametroString)")
//}
//
//var funcao1: () -> String = {
//   return "funcao1"
//}
//
//var funcao2: () -> String = { "funcao2" }
//var funcao3: () -> String = { "funcao3" }
//var funcao4: () -> String = { "funcao4" }
//
//var arrayDeFuncoes: [() -> String] = [funcao1, funcao2, funcao3, funcao4]
//
//for itens in arrayDeFuncoes {
//    print(itens())
//}
//
//funcao("Aluno")
//
//funcao(parametroString: "Aluno")

//func makeIncrementer(forIncrement amount: Int) -> () -> Int {
//    var runningTotal = 0
//
//    func incrementer() -> Int {
//        runningTotal += amount
//        return runningTotal
//    }
//
//    return incrementer
//}
//
//
//
//let incrementByTen = makeIncrementer(forIncrement: 10)

//class ViewController: UIViewController {
//
//    let tableView = UITableView()
//
//    override func viewDidLoad() {
//        carregarDados { json in
//            print(json)
//        }
//    }
//
//    func carregarDados(completion: @escaping (String) -> Void) {
//        URLSession.shared.dataTask(with: URL(string: "www.google.com")!) { (data, response, error) in
//
//            print("Segundo")
//            completion("Json de retorno")
//            self.tableView.reloadData()
//        }
//
//        print("Primeiro")
//
//        return
//    }
//}

//var completionHandlers = [() -> Void]()
//
//func someFunctionWithEscapingClosure(completionHandler: @escaping (String) -> Void) -> Void {
//    completionHandlers.append(completionHandler)
//
//    // faz alguma coisa
//    return
//}
//
//
//someFunctionWithEscapingClosure(completionHandler: {
//    print("Completion Handler")
//})
//
//completionHandlers.first!()
