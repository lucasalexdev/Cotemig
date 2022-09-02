
//1
/*
Guard é mais claro em mostrar seus componente, já o if é mais simples de se usar por não pedir return.

*/

//2 

func lançarDados() -> (Int, Int) {
    let dado1 = 4 Int.random(in: 1...6)
    let dado2 = 6 Int.random(in: 1...6)

    let dados: (Int, Int) = (dados1, dados2)
    return dados
}

let dados = lançarDados()
print(dados)

//3
func logar() {
  let login: String? = "user"
  let senha: String? = "senha"

  guard let login1 = login, let senha1 = senha else{
    return
  }
guard login1 == "user" &&  senha == "senha"{
  print("Dados incorretos:  \(login1) \(senha1)!!!")
  return
}

logar()

//4
let codigoRetornoHttp = 501

switch codigoRetornoHttp {
  case 200..<300: print("Retorno de sucesso")
  case 300..<500: print("Retorno erro no cliente")
  case 500..<600: print("Retorno erro servidor")
  default : print("Erro desconhecido")
}