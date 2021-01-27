/*:
## Nomenclatura e Identificadores
 Em nosso treinamento estudamos a importância de se utilizar uma nomenclatura apropriada, para identificarmos com facilidade os elementos de um programa.
 
 Vimos também que os identificadores devem ser definidos de forma clara e representar bem o que eles significam. Na Swift, utilizamos o padão *camel case* para definir os identificadores. Além disso, normalmente os identificadores são escritos utilizando a língua inglesa como referência.
 */
//:  - callout(Exercício): O trecho de código a seguir está calculando a média aritmética de um aluno, o número de faltas, e verificando se ele passou de ano. A lógica está funcionando, porém os identificadores estão fora do padrão de boas práticas que estudamos.  O seu papel será ajustar os identificadores, porém sem interferir no funcionamento do algoritmo:

let firstNote = 5.0
let secondNote = 7.5
let numStudentAbsences = 25

let calAveraging = (firstNote + secondNote) / 2

if (calAveraging > 6.0 && numStudentAbsences < 26) {
    print("Approved student with media \(calAveraging)")
    print("PTBR Translation: Aluno aprovado com média \(calAveraging)")
} else {
    print("Failed student \(calAveraging)")
    print("PTBR Translation: Aluno reprovado \(calAveraging)")
}

/*:
  Para mais informações, consulte: [The Swift Programming Language.](https://docs.swift.org/swift-book/ReferenceManual/LexicalStructure.html)


[Anterior](@previous)  |  página 2 de 7  |  [Próximo: Constantes e Variáveis](@next)
 */
