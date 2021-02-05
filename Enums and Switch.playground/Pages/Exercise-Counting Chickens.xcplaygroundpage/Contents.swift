/*:
## Exercise: Counting Chickens
 
 This playground has a `Chicken` type built in to it. A `Chicken` has a `breed` and `temper` property, and both properties are enums.
 
 Here is an array of chickens:
 */
chickens
chickens.count

//:  The chickens are all hatched, so it’s safe to count them.
var chickenOfInterestCount = 0
for chicken in chickens {
    if chicken.temper == .hilarious && chicken.breed == .leghorn {
        chickenOfInterestCount += 1
    }
}
chickenOfInterestCount

for chicken in chickens {
    if chicken.temper == .hilarious {
        chickenOfInterestCount += 1
    } else if chicken.breed == .leghorn {
        chickenOfInterestCount += 1
    }
}
chickenOfInterestCount
//:  - callout(Exercise): Update the code in the `for…in` loop to only count interesting chickens, like `.hilarious` `.leghorn`s. Check out the autocompletion popup to see what the possible values for each enum are.
/*:
[Previous](@previous)  |  page 18 of 21  |  [Next: Exercise: Replacing Bools](@next)
 */
