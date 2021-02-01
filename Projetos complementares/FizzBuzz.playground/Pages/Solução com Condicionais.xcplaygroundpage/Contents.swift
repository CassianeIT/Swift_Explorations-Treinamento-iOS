/*:
## Solução do FizzBuzz com Condicionais
 
 A solução mais utilizada para o desafio é utilizando condicionais e, naturalmente, um loop:
 
 */
// Codifique aqui sua solução

//Escreva um programa que imprima os números de 1 a 100

//for index in 1...100 {
//    if index < 101 {
//        print (index)
//    }
//}

//Para números divisíveis por 3, imprima "Fizz"
for index in 1...100 {
    if ((index % 3) == 0) {
        print ("\(index) é Fizz")
    }
}

//Para números divisíveis por 5, imprima “Buzz”
for index in 1...100 {
    if ((index % 5) == 0) {
       // print ("\(index) é Buzz")
    }
}

// Para números divisíveis por 3 e 5, imprima “FizzBuzz”
for index in 1...100 {
    if (((index % 3) == 0) && (index % 5) == 0) {
         //print ("\(index) é FizzBuzz")
    }
}

/*:
[Anterior](@previous)  |  página 2 de 3  |  [Próximo: Solução com Switch](@next)
 */

