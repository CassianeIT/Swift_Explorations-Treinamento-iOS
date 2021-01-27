// Calculo de IMC

let altura = 1.64
let peso = -40.0
let imc = peso / (altura * altura)

/*IMC    Resultado
Menos do que 18,5    Abaixo do peso
Entre 18,5 e 24,9    Peso normal
Entre 25 e 29,9    Sobrepeso
Entre 30 e 34,9    Obesidade grau 1
Entre 35 e 39,9    Obesidade grau 2
Mais do que 40    Obesidade grau 3
*/

switch imc {
case 0...18.4:
    print ("Magreza")
    
case 18.5...24.9:
    print ("Peso normal")
    
case 25...29.9:
    print ("Ob grau 1")
    
case 30...39.9:
    print ("Ob grau 2")
    
case 40.0...100.0:
    print ("Ob grau 3")
    
default:
    print("Peso indeterminado")
}


if imc >= 0 && imc <= 18.4 {
    print ("Magreza")
} else if imc > 18.5 && imc <= 24.9 {
    print ("Peso normal")
} else if imc >= 25.0 && imc <= 29.9 {
    print ("Ob grau 1")
} else if imc >= 30.0 && imc <= 39.9 {
    print ("Ob grau 2")
} else if imc >= 40.0 && imc <= 100.0 {
    print ("Ob grau 3")
} else {
    print("Peso indeterminado")
}

print (imc)
// TODO: Usando If Else
