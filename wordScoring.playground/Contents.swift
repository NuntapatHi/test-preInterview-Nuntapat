import UIKit

import Foundation

func wordScoring(wordString: String) -> String{
    
    let splitedWord = wordString.split(separator: " ")
    var wordList = [String]()
    var scoreList = [Int]()
    var index = 0
    
    var tempWord = ""
    var tempScore = 0
    
    
    for word in splitedWord{
        let wordString = String(word)
        var score = 0
        for character in word{
            guard let asciiValue = character.asciiValue else {
                return "Could not found ascii value of character."
            }
            let asciiIntValue = Int(asciiValue) - 96
            score += asciiIntValue
        }
        wordList.append(wordString)
        scoreList.append(score)
    }
    
    for _ in 0..<wordList.count{
        if tempWord == "", tempScore == 0{
            tempWord = wordList[index]
            tempScore = scoreList[index]
        } else {
            if tempScore < scoreList[index]{
                tempWord = wordList[index]
                tempScore = scoreList[index]
            }
        }
        index += 1
    }
    
    return tempWord
}

//test case
print(wordScoring(wordString: "i am legend"))
print(wordScoring(wordString: "hello world"))
print(wordScoring(wordString: "this is a word"))
print(wordScoring(wordString: "sith itsh stih this"))
