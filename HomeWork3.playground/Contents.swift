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

var counter = 0

for _ in 1...20 {
    var randomNumber = Int.random(in: 1...20)
    counter += 1
    if randomNumber == 5 {
        print("Number 5 will be after \(counter) shuffles")
        break
    }
}

///different solution
var numberToCheck = 5
var shuffleCounts = 0

while numberToCheck != 5 {
    numberToCheck = Int.random(in: 1...20)
    shuffleCounts += 1
}
print("Number 5 will be after \(shuffleCounts) shuffles")

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

var post = 10
var climbPerDay = 2
var slidePerDay = 1
var numberOfDays = 0
var totalClimbed = 0

while totalClimbed < post {
    totalClimbed += climbPerDay
    numberOfDays += 1
    if totalClimbed >= post {
        break
    }
    totalClimbed -= slidePerDay
}
 print("The bug will spend \(numberOfDays) days to reach the top of the post")

///different solution
var distance = 0
var days = 0
var isDay = true

while distance != 10 {
    if isDay {
        distance += 2
        days += 1
        isDay = false
    } else {
        distance -= 1
        isDay = true
    }
}
print("The bug will spend \(days) days to reach the top of the post")
