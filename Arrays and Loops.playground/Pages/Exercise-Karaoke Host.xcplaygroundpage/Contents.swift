/*:
## Exercise: Karaoke Host

 You have a friend who loves singing karaoke with a big group of people. The karaoke singers add songs they’d like to sing to a list and the karaoke host calls out the songs one by one. 
 
 Your friend and has asked you to write software to help manage the song list.

 - callout(Exercise): 
 Create an empty array to hold song titles as strings, and use the `append` method to add three or four songs one at a time.
 */
var songs = [String] ()
songs.append ("Music 1")
songs.append("Music 2")
songs.append("Music 3")
/*:
 - callout(Exercise): 
 One enthusiastic singer wants to add three songs at once. Create an array holding this one singer's song list and use the `+=` operator to append their whole list to the end of the group's song list.
 */
let songs2 = ["Music 4", "Music 5,", "Music 6", "Music 7"]
songs += songs2
print (songs)
/*:
 - callout(Exercise): 
 Write a `for…in` loop and, for every song title in the array, print an encouraging announcement to let the next singer know that it's their turn.
 */
for _ in songs {
    //print(listMusic)
}

// solucoes mais avançadas, exibe também o número de musicas
for index in 0..<songs.count {
    print("\(index + 1): \(songs[index])")
}
/*:
 - callout(Exercise): 
 After the loop has called everyone up to sing, use the `removeAll` method on the song list to clear out all the past songs.
 */
var pessoas = ["Pessoa 1", "Pessoa 2", "Pessoa 3", "Pessoa 4", "Pessoa 5"]

songs.shuffle()
pessoas.shuffle()

print("Veja a música que voce vai cantar")

for index in 0..<pessoas.count {
        print("\(index + 1): \(songs[index]) - \(pessoas[index])")
}
// colocamos for index 0..<pessoas.. porque tem mais musicas do que pessoas, logo vinculamos o for a pessoas, para nao dar erro, ele ira passar sempre por pessoas, jogando aleatoriamente junto as musicas, algumas musicas ficam de fora, mas pelo menos passa por todas as pessoas

songs.removeAll()
print(songs)
/*:
[Previous](@previous)  |  page 14 of 18  |  [Next: Exercise: Counting Votes](@next)
 */
