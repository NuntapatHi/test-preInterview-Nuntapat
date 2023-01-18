import Foundation

/*
 Read how to use description below class structure
 */

class OddEvenList<T>{

    var arrayList = [T]()
    var result = [T]()
    var countIndex: Int{
        get{
            return arrayList.count
        }
    }

    func add(input: T) -> [T]{
        arrayList.append(input)
        return arrayList
    }

    func remove(index: Int) -> Bool{
        if countIndex > 0, index < countIndex{
            arrayList.remove(at: index)
            return true
        } else {
            return false
        }
    }

    func getOdd() -> [T]{
        result = []
        if countIndex > 0{
            for value in arrayList{
                if value is Int{
                    if ((value as! Int) % 2) != 0 {
                        result.append(value)
                    }
                }
            }
            return(result)
            
        } else {
            print("No element in arrayList.")
            return result
        }
    }

    func getEven() -> [T]{
        result = []
        if countIndex > 0{
            for value in arrayList{
                if value is Int{
                    if ((value as! Int) % 2) == 0 {
                        result.append(value)
                    }
                }
            }
            return result
        } else {
            print("No element in arrayList.")
            return result
        }
    }

    func getRandom() -> [T]{
        result = []
        if countIndex > 0{
            let randomCount = Int.random(in: 1...countIndex)
            let tempArray = arrayList.shuffled()
            for index in 0...randomCount-1{
                result.append(tempArray[index])
            }
            return result
        }
        else {
            print("Something go wrong, could not get random arrayList")
            return result
        }
    }
}

/*
How to use
*/

//create new object and assign Int for genetic type
let oddEvenList = OddEvenList<Int>()

//add parameters by add method
print("[Add parameters]")
print("arrayList: \(oddEvenList.add(input: 3))")
print("arrayList: \(oddEvenList.add(input: 6))")
print("arrayList: \(oddEvenList.add(input: 5))")
print("arrayList: \(oddEvenList.add(input: 1))")
print("---------------------------------------------")
/*
 remove element at index and show status with bool by remove method
*/

print("[Remove a element]")

//fail case
print("fail case")
print("remove's status: \(oddEvenList.remove(index: 4))")
print("arrayList: \(oddEvenList.arrayList)")

//complet case
print("complet case")
print("remove's status: \(oddEvenList.remove(index: 3))")
print("arrayList: \(oddEvenList.arrayList)")


print("---------------------------------------------")
//get odd numbers from arrayList by getOdd method
print("[Show odd numbers list]")
print("original list: \(oddEvenList.arrayList)")
print("odd number: \(oddEvenList.getOdd())")

print("---------------------------------------------")
//get even numbers from arrayList by getEven method
print("[Show even numbers list]")
print("original list: \(oddEvenList.arrayList)")
print("even number: \(oddEvenList.getEven())")
print("---------------------------------------------")

/*get random list from arrayList by getRandom method*/
print("[get random list]")
//case 1
print("case 1")
print("random list 1: \(oddEvenList.getRandom())")
print("original list: \(oddEvenList.arrayList)")
//case 2
print("case 2")
print("random list 2: \(oddEvenList.getRandom())")
print("original list: \(oddEvenList.arrayList)")
//case 3
print("case 3")
print("random list 3: \(oddEvenList.getRandom())")
print("original list: \(oddEvenList.arrayList)")
print("---------------------------------------------")
