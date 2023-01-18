import Foundation

func reverseString(_ wordString: String) -> String{
    let wordList = wordString.split(separator: " ")
    var newReversedWord = ""
    var index = 0
    var countSpac = 0
    var specCountList = [Int]()
    var spaces = ""
    
    //Counting spaces between words
    for character in wordString{
        if character == " "{
            countSpac += 1
        } else {
            if countSpac > 0{
                specCountList.append(countSpac)
                countSpac = 0
            }
        }
    }
    
    //Modeling new reversed Word
    for word in wordList{
        let reversed = String(word.reversed())
        if index < wordList.count-1{
            spaces = String(repeating: " ", count: specCountList[index])
        }
        newReversedWord += reversed + spaces
        index += 1
        spaces = ""
        
    }

    return newReversedWord
}

//test case
print(reverseString("This is an example!"))
print(reverseString("double  spacse"))
