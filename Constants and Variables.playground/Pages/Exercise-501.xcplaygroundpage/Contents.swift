/*:
## Exercise: 501
 
 You may know the popular darts game called 501. Players start with a score of 501 and work down to zero. Here are the rules:
 
- Each player plays a “round” where they throw three darts at a board.
- Each throw can score between 1 and 20 points, which may be doubled or tripled depending where it hits on the board.
- It's also possible to score 25 for the outer bulls-eye or 50 for the inner bulls-eye.
 
 House rule: At the end of three rounds, whoever is closest to zero without going below zero is the winner.

 - callout(Exercise): Imagine you’re a game shark. You want to fool people into thinking you’re terrible at this game, but then come back and beat them in one swoop at the end. Model your game progress using variables.\
 \
 Start with a variable set to `501` to hold your overall score.\
 Create another variable set to `0` to hold the score for each round.\
 For each throw, update the value of the round score by adding points from the throw.\
 At the end of each round, calculate your current overall score by subtracting the round score from it. Assign the new value to your overall score, and reset the round score to zero.\
 \
 How slowly can you “improve” your performance without arousing suspicion? \
 \
 After each round, `print` some statements that your opponents might make. If you can, use the value of your current score in their statements.
 */
var Point = 501
var jogada1 = 15
var jogada2 = 25
var jogada3 = 50

var roud1 = jogada1+jogada2+jogada3
// 1 rodada
var resultado1 = Point - roud1

// 2 rodada
var jogada10 = 25
var jogada20 = 45
var jogada30 = 50

var roud2 = jogada10+jogada20+jogada30

var resultado2 = resultado1 - roud2

// 3 rodada
var jogada100 = 35
var jogada200 = 45
var jogada300 = 50

var roud3 = jogada100+jogada200+jogada300

var resultado3 = resultado2 - roud3

print(resultado3)

// Soluções avançadas dos trainees

// By Victor

var overallPlayerScore = 501
var roundScore = 0
var dartsCount = 1 // controle de dardos

for _ in 1...3 { //contole do game
    for _ in 1...3{ //controle de round
        if dartsCount == 3{
            roundScore += 50
            dartsCount = 1
        }
        else if dartsCount == 2{
            roundScore += 25
            dartsCount += 1
        }
        else{
            roundScore += Int.random(in: 1...20) * Int.random(in: 1...3)
            dartsCount += 1
        }
    }
    overallPlayerScore -= roundScore
    print(overallPlayerScore)
    roundScore = 0
}
print(overallPlayerScore)

/*:
  _Copyright © 2020 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 
[Previous](@previous)  |  page 13 of 13
 */
