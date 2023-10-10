import UIKit
/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()

 */

var first: Float = 4.67
var second: Float = 3.98

var third: Double = Double(first + second)

let formatted = String(format: "%.2f", third)

print(formatted)

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */

var numberOne: Int = 35
var numberTwo: Int = 9

let result: Int = numberOne / numberTwo
let remainder: Int = numberOne % numberTwo

print("When dividing \(numberOne) by \(numberTwo), the result is \(result), the remainder is \(remainder)")


/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

/* 1ST TRY, UNSUCCESSFUL
 var qty: Int = 8
 
 if qty < 5 {
     var price = 1000
     var totalSum = qty * price
     print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum)")
     
     if qty >= 5 && qty < 10 {
         var price = 900
         var totalSum = qty * price
         print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum)")
     }
 } else {
     var price = 850
     var totalSum = qty * price
     print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum)")
 */

var qty: Int = 13
var price: Int
var totalSum: Int

if qty < 5 {
    price = 1000
} else if qty >= 5 && qty < 10 {
    price = 900
} else {
    price = 850
}

totalSum = qty * price
print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum)")


/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

let userInputAge: String? = "33a"
if let string = userInputAge, let myInt = Int(string){
    print("Int: \(myInt)")
} else {
    print("Could not convert to Int")
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "dd/MM/yyyy"
let birthday = dateFormatter.date(from: "21/11/1989") ?? Date()
let today = Date()
let calendar = Calendar.current
let totalDaysFromBirth = calendar.dateComponents([.day], from: birthday, to: today).day
let totalMonthsFromBirth = calendar.dateComponents([.month], from: birthday, to: today).month
let totalYearsFromBirth = calendar.dateComponents([.year], from: birthday, to: today).year

if totalDaysFromBirth != 0 || totalMonthsFromBirth != 0 || totalYearsFromBirth != 0 {
    print("Total years: \(totalYearsFromBirth), total months: \(totalMonthsFromBirth), total days: \(totalDaysFromBirth) have passed")
} else {
    print("Something here is very wrong")
}

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

if let monthOfBirth = calendar.dateComponents([.month], from: birthday).month {
    switch monthOfBirth {
    case 1...3:
        print("I was born in the first quarter!")
    case 4...6:
        print("I was born in the second quarter!")
    case 7...9:
        print("I was born in the third quarter!")
    case 10...12:
        print("I was born in the fourth quarter!")
    default:
        print("This is wrong")
    }
}
