/*:
 ## Least and Most Popular
 
 Finding the most and least popular shows is straightforward—you just have to find the `TabulatedValue`s with the minimum and maximum count.
 
 Finding the minimum or maximum value in a list is a common task. You can use such basic algorithms as buliding blocks for more complex ones. On this page, you'll start by creating functions to calculate the indices of minimum and maximum values in a list, and then use them to accomplish your ultimate goal.
 
 ## Maximum and Minimum
  
 Rather than returning the `TabulatedValue` itself, you'll write algorithms to return the *index* of the value in the array. Here's a good strategy for the index of the maximum value (a similar one works for the minimum value):
 
 - Create a variable to keep track of the maximum item's index and initialize it to zero.
 - Loop through the array indices. For each index:
    - Get the item in the array. If the item's count is greater than the count of the maximum item, update the maximum index to be the current index.
 
 - callout(Exercise): Complete the two functions below to return the indices of the items with maximum and minimum counts in an array of `TabulatedValue`s. (Hint: You'll use the style of `for ... in` that counts counts a range of numbers from zero to the last index of the array: `for i in 0 ... tabulatedValues.count - 1`.)
 */
func indexOfMaximum(from tabulatedValues: [TabulatedValue]) -> Int {
    var maxIndex = 0
    for index in 0 ... tabulatedValues.count - 1 {
        if tabulatedValues[index].count > tabulatedValues[maxIndex].count {
            maxIndex = index
        }
    }
    return maxIndex
}

func indexOfMinimum(from tabulatedValues: [TabulatedValue]) -> Int {
    var minIndex = 0
    for index in 0 ... tabulatedValues.count - 1 {
        if tabulatedValues[index].count < tabulatedValues[minIndex].count {
            minIndex = index
        }
    }
    return minIndex
}

/*:
 - callout(Exercise): Test your functions by printing out the most popular show and the least popular show. The tabulator for the survey results has already been created for you below.
 */
print(tabulator.tabulatedValues)
let mostPopularShow = indexOfMaximum(from: tabulator.tabulatedValues)
print ("O show mais popular é: \(tabulator.tabulatedValues[mostPopularShow])")

let lestPopularShow = indexOfMinimum (from: tabulator.tabulatedValues)
print ("O show mais popular é: \(tabulator.tabulatedValues[lestPopularShow])")

/*:
 ## Show lists

 Now that you can get the index of the minimum and maximum `TabulatedValue`s from an array, you can build an algorithm to print the three most and three least popular shows. The key is to create a new array variable for your shows, then remove shows from the array as you find them. The minimum or maximum value will change after each time you find and remove a result.
 
 You'll be writing loops that run exactly three times, so they'll look something like `for i in 1 ... 3`. (But in this case, you won't actually be using the `i` variable inside the loop. If you want to eliminate the compiler warning, replace `i` with an underscore `_`, which looks strange but indicates that you're not interested in the loop value.)
 
 - callout(Exercise): Use the pseudocode comments to build an algorithm to print the three most and three least popular shows.
 */
// Create a new array variable for all shows and store the tabulated values in it.
var allShows = tabulator.tabulatedValues

// Create two empty arrays to store the most and least popular shows.
var mostPopular: [TabulatedValue] = []
var leastPopular: [TabulatedValue] = []

// Loop three times:
//  - Find the index of the maximum
//  - Append the show at that index to the most popular shows array
//  - Remove the show at that index from the all shows array
for index in 1 ... 3 {
let maxIndex = indexOfMaximum(from: allShows)
    mostPopular.append(allShows[maxIndex])
    allShows.remove(at: maxIndex)
}
// Print out the most popular shows

// Loop three times:
//  - Find the index of the minimum
print ("Os três shouw mais populares são: \(mostPopular)")
    
//  - Append the show at that index to the least popular shows array
    for index in 1 ... 3 {
    let minIndex = indexOfMinimum (from: allShows)
        leastPopular.append(allShows[minIndex])
        allShows.remove(at: minIndex)
    }
//  - Remove the show at that index from the all shows array

// Print out the least popular shows
print ("Os três shouw menos populares são: \(leastPopular)")

//: [Previous](@previous)  |  page 9 of 11  |  [Next: Ranking](@next)
