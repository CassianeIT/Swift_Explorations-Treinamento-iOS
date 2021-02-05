import Foundation

var tenMostCommonPasswords = [
    "123456",
    "password",
    "12345678",
    "qwerty",
    "12345",
    "123456789",
    "letmein",
    "1234567",
    "football",
    "iloveyou"
]
let digits = "0123456789"
let punctuation = "!@#$%^&*(),.<>;'`~[]{}\\|/?_-+= "


//Função
public func validPassword(username: String, password: String) -> Bool {
    var msgError = String()

//Primeira vericacao
    if tenMostCommonPasswords.contains(password) {
    msgError += "Senha fraca, por favor revise\n"
}
// Demais verificações
if password.count < 16 {
    msgError += "A senha deve conter pelo menos 16 caracteres\n"
}
    var numberOfDigits = 0
    var numberOfPunctuationCharacters = 0
    var numberOfRegularLetters = 0
    var numberOfUpperLetters = 0
    
    for character in password {
        if digits.contains(character) {
            numberOfDigits += 1
        } else if punctuation.contains(character) {
            numberOfPunctuationCharacters += 1
        } else if character.isUppercase {
            numberOfUpperLetters += 1
        } else {
            numberOfRegularLetters += 1
        }
    }
    
    if numberOfDigits == 0 {
        msgError += "A senha deve conter pelo menos um caracter\n"
    }
    
    if numberOfPunctuationCharacters ==  0 {
        msgError += ("A senha deve conter pelo menos um caracter de pontuação: \(punctuation)")
    }
    
    if numberOfRegularLetters == 0 {
        msgError += "A senha deve conter pelo menos uma letra"
    }
    if numberOfUpperLetters == 0 {
        msgError += "A senha deve conter pelo menos uma letra Maiuscula"
    }
// advance rule
    if password.contains(username) {
        msgError += "Senha não pode conter o usuário e vice-versa"
    }

// Verifica se houve algum erro de verificação na senha
    if msgError.isEmpty {
        print("Sua senha foi criada com sucesso")
        return true
    } else {
        print(msgError)
        return false
    }
}


