struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        // TODO: Write a response
        let lowerQuestion = question.lowercased()
        
        if lowerQuestion == "where are the cookies?" {
            return "In the cookie jar!"
        } else if lowerQuestion.hasPrefix("where") {
            return "To the North!"
        } else {
          
            let defaultNumber = question.count % 3
            // essa expessão ira retornar 0, 1 ou 2
            // print("\(question.count % 3)")
            
            if defaultNumber == 0 {
                // 0
                return "That really depends"
            } else if defaultNumber == 1 {
                // 1
                return "Ask me again tomorrow"
            } else {
                // 2
                return "Sorry, repeat"
            }
        
        }
    }
    
}

