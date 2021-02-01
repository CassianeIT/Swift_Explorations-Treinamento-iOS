/*:
## Exercise: Counting Votes
 
 You're implementing a poll app for your class. You start with a basic yes-no question counter and now you have your first batch of answers back, parsed into arrays below.
 
 This is a lot of data! But don't worry too much about the long arrays. Whether you're planning to iterate over two items or two thousand, you’ll write the loop in exactly the same way.
 */
let shouldMascotChangeVotes: [Bool] = [false, false, false, true, false, true, true, true, false, true, true, true, true, false, true, true, false, true, true, true, false, true, true, true, true, true, true, true, false, true, false, true, false, true, true, false, false, true, true, false, false, true, true, true, false, true, false, true, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, false, true, true, true, false, true, true, false, false, true, false, true, true, false, false, false, true, false, true, true, false, true, true, true, true, true, true, true, false, true, false, true, false, true, true, true, true, true, true, true, false, true, true, false, true, true, true, true, true, true, true, false, true, true, false, true, true, false, true, true, true, true, true, false, false, false, false, true, true, true, false, true, true, false, false, true, false, false, true, true, true, true, false, true, true, true, true, false, true, true, false, true, false, false, true, true, false, true, false, false, false, true, false, false, false, true, false, true, true, false, true, true, false, true, true, true, false, false, false, true, false, true, false, true, true, true, true, false, true, false, false, true, true, true, true, true, false]

let shouldInstallCoffeeVendingMachineVotes: [Bool] = [true, true, false, false, false, true, true, false, true, true, true, true, false, true, false, false, true, false, true, false, true, true, false, false, false, false, false, true, true, true, false, false, true, true, false, true, true, true, true, false, true, false, true, true, false, false, false, false, false, false, true, false, true, true, false, true, true, true, true, false, false, true, true, false, false, false, false, true, true, false, false, true, true, true, true, false, false, true, true, false, true, false, true, false, true, true, true, false, true, true, true, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, true, true, false, true, false, true, true, true, false, false, false, false, false, false, true, true, false, false, true, true, true, true, true, true, false, false, false, true, true, true, true, false, false, false, true, true, false, true, true, true, false, false, true, false, true, false, true, false, false, true, false, true, true, true, true, true, true, true, false, true, false, true, true, false, false, true, false, false, true, false, false, false, true, false, true, true, true, false, false, false, false, false, false, true, false, true, false, true, true, false, false, false, true]

let shouldHaveMorePollOptionsVotes: [Bool] = [false, false, true, true, false, true, false, false, false, false, false, false, true, false, true, true, false, true, true, false, false, true, true, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, true, true, false, true, true, false, true, false, true, true, false, false, false, false, true, false, true, true, false, false, false, false, true, true, true, true, false, true, false, false, true, true, false, false, false, false, false, false, true, true, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, true, true, false, false, true, false, true, false, false, false, true, false, true, true, true, true, true, true, true, false, false, false, false, true, false, false, false, false, false, true, false, false, true, false, false, true, false, false, true, false, false, true, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, true, true, true, false, true, false, false, false, false, false, false, false, false, true, true, true, true, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, false, true, true, false, false]

/*:
This is too many votes to tally quickly by hand, so you’ll write some code to tally it for you.

 - Note: 
This is also a lot of votes for Swift to use type inference to determine what kind of array it has. The type annotation is written in the array literals above to tell Swift the type of array. This prevents the playground from running slowly.
 */
/*
var yesVotes = 0
var noVotes = 0

for votosMascote in shouldMascotChangeVotes {
    if votosMascote == true {
        // == é opcional porque if, sempre considera que se primeiro V e se nao Falso
        yesVotes += 1
    } else {
        noVotes += 1
    }
}

// votacao 2

var yesCoffe = 0
var noCoffe = 0

for votosCafe in shouldInstallCoffeeVendingMachineVotes {
    if votosCafe == true {
        yesCoffe += 1
    } else {
        noCoffe += 1
    }
}

var yesEleicao = 0
var noEleicao = 0

for novasVotacoes in shouldHaveMorePollOptionsVotes {
    if novasVotacoes == true {
        yesEleicao += 1
    } else {
        noEleicao += 1
    }
}

*/
/*
if yesVotes > noVotes {
    print("Maioria votou pela troca de mascote")
} else {
    print("Maioria votou em não trocar o mascote")
}

if yesCoffe > noCoffe {
    print("Maioria votou pela compra da maquina de cafe")
} else if yesCoffe == noCoffe {
    print("Empate")
} else {
    print("Maioria votou em não trocar da maquina de cafe")
}


if yesEleicao > noEleicao {
    print("Maioria votou pela continuação das votações")
} else if yesEleicao == noEleicao {
    print("Empate")
} else {
 print("Maioria votou por não continuar votações")
}
*/
/*:
 - callout(Exercise): Test your code by calling the `for…in` loop on each of the vote arrays.\
Which measures won by popular vote?
 */

/*:
### Extension:
 Your `for…in` loop would be even more powerful if you could easily reuse it. The easiest way to reuse code is to put it in a function.

 - callout(Exercise): Write a function that takes two arguments: a string describing the issue being voted on and an array with the issue's `Bool` votes. Move the `for…in` loop and the `if` statement *inside* the function, so it prints the results when you call the function with a particular issue's arguments. You should be able to call the function like this:

```
 printResults(forIssue: "Should we change the mascot?", withVotes:shouldMascotChangeVotes)
```

 A message like this should be printed to the console:\
 `Should we change the mascot? 54 yes, 23 no`
 */
// Add your vote-processing function here:
func printResults (forIssue issue: String, withVotes votes: [Bool]) {
    
    var yesVotes = 0
    var noVotes = 0
    
    for vote in votes {
        if vote == true { // true opcional
            yesVotes += 1
        } else {
            noVotes += 1
        }
    }
    print("\(issue): \(yesVotes) sim, \(noVotes) não.")
}

// vamos tabular as votações com a fun
printResults(forIssue: "Troca de Mascote", withVotes: shouldMascotChangeVotes)
printResults(forIssue: "Máquina de café", withVotes: shouldInstallCoffeeVendingMachineVotes)
printResults(forIssue: "Continuação das votações", withVotes: shouldHaveMorePollOptionsVotes)




/*:
[Previous](@previous)  |  page 15 of 18  |  [Next: Exercise: Goals](@next)
 */
