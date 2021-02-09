struct ConversationDelegate {
    /// Creates a String in response to another String.
    func responseTo(question: String) -> String {
        let lowerQuestion = question.lowercased()
        
        if lowerQuestion.hasPrefix("hello") {
            return "Why, hello there!"
        } else if lowerQuestion == "where are the cookies?" {
            return "In the cookie jar!"
        } else if lowerQuestion.hasPrefix("where") {
            return "Where what?!"
        } else if lowerQuestion.hasPrefix("coffe") {
            return "I love coffe.."
        } else {
            let defaultNumber = question.count % 4
            // essa expessão ira retornar 0, 1 ou 2
            // print("\(question.count % 3)")
            
            if defaultNumber == 0 {
                //0
                return "That really depends"
            } else if defaultNumber == 1 {
                //1
                return "Ask me again tomorrow"
            } else if defaultNumber == 2 {
                //2
                return "Sorry, repeat"
            } else {
                return "Don't eat too many cookies, get fat!"
            }
        }
    }
}
