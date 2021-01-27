import UIKit

// *** EXERCÍCIO 01 ***
/*
    Perguntei à Alexa se devia levar um casaco
    Ela respondeu: Não, Carlos, pode ir com uma roupa leve hoje
    Os critérios que ela pode ter usado são os seguintes:
    - Se a temperatura estiver abaixo de 21ºC, ela recomenda
        levar um casaco
    - Se a temperatura estiver igual ou acima de 21ºC, ela recomenda
        usar roupas leves
    ATENÇÃO: Vamos pressupor que já temos a temperatura calculado
*/

let temperature = 21

if temperature >= 21 {
    print ("Pode vestir roupas leves hoje!")
} else {
    print ("Melhor levar um casaco!")
}

// *** EXERCÍCIO 02 ***
/*
    Os engenheiros de IA da Amazon inseriram mais uma condição no algoritmo
    da Alexa:
    - Se a temperatura estiver abaixo de 12ºC, ela questiona se você precisa
        mesmo sair de casa, pois está muito frio
    Como fica o nosso if neste caso?
*/

    let temperatureAmazon = 12

    if temperatureAmazon >= 21 {
        print ("Pode vestir roupas leves hoje!")
    } else if temperatureAmazon < 12  {
        print ("Você precisa mesmo sair de casa hoje? Não recomendo, está muito frio!")
    } else {
            print ("Melhor levar um casaco!")
        }

// *** EXERCÍCIO 03 ***
/*
    Avaliar média para aprovação do aluno
    Se média de (nota1 + nota2) for maior ou igual a 6.0 (seis) o aluno estará aprovado
    Porém o o número de faltas não poderá ser superior a 25
    Caso contrário, o aluno estará reprovado
*/

// Solução utilizando if-else
let grade1 = 7.0
let grade2 = 7.0
let finalScore = (grade1 + grade2) / 2
let absences = 20
print ("Situação do aluno:")
print ("Média: \(finalScore), Faltas: \(absences)")

if (finalScore >= 6.0 && absences <= 25) {
    print("Aluno aprovado com média: \(finalScore)")
} else {
    print("Aluno reprovado!")
}

// Solução utilizando variável booleana

let approved = (finalScore >= 6.0 && absences <= 25)
if approved {
    print ("Aluno aprovado!")
} else {
    print ("Aluno reprovado!")
}


// *** EXERCÍCIO 04 ***
/*
    Avaliar se um estudante entrou na faculdade
    Para entrar, tem que obedecer uma destas
    condições:
    1) Aprovado no vestibular
    2) Passou no ENEM
*/

let vestibular = true
let enem = true
if (vestibular || enem) {
    print ("Parabéns, você foi aprovado! 😊")
} else {
    print ("Sinto muito, não aprovado! 😢")
}


// *** EXERCÍCIO 05 ***
// Regra de Negócio: Para ser admitido no programa de trainees, a pessoa
//  precisa:
//  - Conhecer as linguagens Kotlin ou Swift, e
//  - Falar inglês fluentemente

//  Espaço para codificação da solução

let kotlin = false
let swift = false
let english = true

if ((kotlin || swift) && english) {
    print ("Parabéns, você foi aprovado no processo seletivo para Trainee na Foursys.")
} else {
    print ("Sinto muito, você não atende aos requisitos da vaga. Acompanhe nossas divulgações.")
}

// Fim da codificação








