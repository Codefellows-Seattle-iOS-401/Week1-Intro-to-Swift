
// given an array of strings, return all polindromes

var arr = ["hey", "what", "mom", "racecar", "poop", "jake"]

func poli(input: [String]) -> [String] {
    var newArr = [String]()
    for element in input {
        let reverse = String(element.characters.reverse())
        if reverse == element {
            newArr.append(element)
        }
    }
    return newArr
}
poli(arr)



// Base 10 ---> Base 16

var dict: [Int: String] = [10: "A", 11: "B", 12: "C", 13: "D", 14: "E", 15: "F"]

func base16(number: Int) -> String {
    var inputValue = number
    var remainders = [String]()
    var modulo = (inputValue % 16)
    
    while(inputValue > 16) {
        inputValue = Int(inputValue / 16)
        remainders.insert(String(modulo), atIndex: 0)
        modulo = (inputValue % 16)
    }
    remainders.insert(String(inputValue), atIndex: 0)
    for (index, element) in remainders.enumerate() {
        if (Int(element)) > 9 {
            let moduloToText = dict[Int(element)!]!
            remainders[index] = moduloToText
        }
    }
    return remainders.reduce("",combine:{$0 + $1})
}
base16(63933)



// roman numerals --> Base 10



















