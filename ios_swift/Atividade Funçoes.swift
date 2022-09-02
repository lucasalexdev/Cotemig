//Funções Atividade

//1
var num 1 = 2

var num2 = 0

var resultado = 1
func numeros(_ num1: Int){
  var num1 = num1

  while num1 > 1 {
    if num1 % num1 == 0 {
      num1 = num1 / num1
      num2 = num2 + 1 
    } else {
      num1 = num1 + 1
    }
  }
  
  while num2 > 0 {
      result = result * 2
      num2 = num2 - 1
  }
  print(resultado)
}
numeros(5555)


//2
func numero(_ num: Int){
    var condic = true
    if (num > 0){
        condic = true
    } else {
        condic = false
    }
    print(condic)
}
numero(-55)


//3
func conceit(media: Double) -> String{

      var conceit = ""
	  
      if media >= 0 && media < 5{
          conceit = "D"
		  
      }else if media >= 5 && media < 7{
          conceit = "C"
		  
      }else if media >= 7 && media < 9{
          conceit = "B"
		  
      }else if media >= 9 && media <= 10{
           conceit = "A"
      }
   return conceit
}
print (conceit(media: 10))
notaUsu(5.5)


//4
var n: Int = 0
func returno(_ array: Array<Int>){

    for item in array {
     n = n + item
    }
    print(n)
}
retorno([5,15,25,35,45,55])


//5
let numeros1: Array<Int> = [5,15,25,35,45,55,65,75,85]

func multiplica(_ quant: Int){


  var lista: Array<Int> = []
  for item in numeros1 {
    lista.append(item * quantidade)
  }

  print(lista)
}
multiplica(5)

//6
func num1(_ quantidade: Int){
    var quantidade = quantidade
    while quantidade / 2 > 1 {
    quantidade = quantidade / 2
    print(quantidade)
    }   
}
num1(10)