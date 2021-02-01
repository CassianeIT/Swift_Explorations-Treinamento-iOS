/*:
## Exercise: Goals

Think of a goal of yours that can be measured in progress every day, whether it’s minutes spent exercising, number of photos sent to friends, hours spent sleeping, or number words written for your novel.

 - callout(Exercise): Create an array literal with 20 to 25 items of sample data for your daily activity. It may be something like `let milesBiked = [3, 7.5, 0, 0, 17 ... ]` Feel free to make up or embellish the numbers, but make sure you have entries that are above, below and exactly at the goal you've thought of. _Hint: Make sure to choose the right kind of array for your data, whether `[Double]` or `[Int]`._
 */
let milesBiked: [Int] = [3, 7, 0, 0, 17, 20, 25, 30, 35, 40, 45, 9, 10, 12, 23, 42, 44, 55, 56, 57, 60, 65, 70, 90]
milesBiked.count

//:  - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!
func metas (milhasBike: Int) -> String {
    let meta = 50
    
    // verifica se a meta foi alcançada
    if milhasBike >= meta {
        return "Parabéns você atingiu sua meta!"
    } else {
        return "Você precisa se dedicar mais"
    }
}
    

//:  - callout(Exercise): Write a `for…in` loop that iterates over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.
for item in milesBiked {
    print (metas(milhasBike: item))
}
/*:
[Previous](@previous)  |  page 16 of 18  |  [Next: Exercise: Screening Messages](@next)
 */
