import Foundation

func squareDigits(n: Int) -> Int{
    
    var numberString: String{
        get{
            if n < 0{
                let number = n * -1
                return String(number)
            } else {
                return String(n)
            }
        }
    }

    var resultSitrng = ""
    for i in numberString{
        if let intValue = Int(String(i)){
            let poweredValue = intValue * intValue
            resultSitrng = resultSitrng + "\(poweredValue)"
        } else {
            print("Failed to convert character into int")
            return 0
        }
    }
    
    guard let resultInt = Int(resultSitrng) else {
        print("Failed to result from string into int")
        return 0
    }
    return resultInt
}

//test case
print(squareDigits(n: 9119))
print(squareDigits(n: 0))
