import UIKit

/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

let myTeam = "Girls"

var resultsOfGames: [String : String] = [
    "Broklyn Nets" : ["99:88", "109:99"],
    "Washington Wizards" : "107:122",
    "Dallas Maverics" : "104:97"
]

for (key, value) in resultsOfGames {
    print("\(myTeam) against \(key) scored - \(value)")
}


/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

let myWallet = [5, 10, 20, 50, 100, 500]

func calculateCash() {
    var sum = 0
    
    for number in myWallet {
        sum += number
    }
    
    //print("The sum of cash inside my wallet is \(sum) eur")
    return sum
}

calculateCash()

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

var number = Int.random(in: 1...20)

func isEvenNumber1() -> Bool {
    return number % 2 == 0
}

isEvenNumber1()

//---------------------------------------------------

func isEvenNumber(_ number: Int) -> Bool {
    return number % 2 == 0
}

isEvenNumber(8)

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(start: Int, end: Int) -> Array<Int> {
    var myArray = [Int] ()
    
    for number in start...end {
        myArray.append(number)
    }
    
    return myArray
}

var myArray = createArray(start: 1, end: 100)
print(myArray)

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

for number in myArray {
    if isEvenNumber(number) {
        if let index = myArray.firstIndex(of: number) {
            myArray.remove(at: index)
        }
    }
}
print(myArray)


myArray.removeAll(where: isEvenNumber)
