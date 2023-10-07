import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

var deposit = 500000
var rate = 0.05 //this is 5%
var period = 5
var profit: Double = 0.0

for _ in 1...period {
    profit += rate * Double(deposit)
}

deposit = Int(Double(deposit) + profit)
print("Amount of income after \(period) years will be \(profit) EUR. My total deposit will be \(deposit) EUR!")

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

var numbers = [1, 45, 67, 3, 46, 88, 90, 75, 36]

for evenNumber in numbers {
    if evenNumber % 2 == 0 {
        print("My even numbers are: \(evenNumber)")
    }
}

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */


/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */
