import UIKit


/*
Exercise 1
Declare two string constants firstString and secondString. Assign them the values "I'm learing" and "swift". Print the phrase "I'm learing swift !!!" using these string variables.
*/

let firstString: String = "I'm learning"
let secondString: String = " swift !!!"
print(firstString + secondString)

/*
Exercise 2.1
Create a constant named myAge and assign it the value of your age.
*/

let myAge: Int = 33

/*
Exercise 2.2
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
*/

var myAgeInTenYears: Int = myAge + 10

/*
Home Work1
Exercise 2.3
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
*/

let daysInYear: Float = 365.25

/*
Exercise 2.4
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/

var daysPassed: Float = daysInYear * Float(myAgeInTenYears)

/*
Exercise 2.5
Using the print() function, print the phrases like: "My age is <...> years. After 10 years, I will be <...> years old. From the moment of my birth day have passed approximately <...>" . (Symbols (<...>) must be replaced with variable values !)
*/

print("My age is \(myAge) years. After 10 years, I will be \(myAgeInTenYears) years old. From the moment of my birth day have passed approximately \(daysPassed) days")

/*
Exercise 3.
 
Calculate triangle's area and perimeter.
Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
*/

let triangleAC: Double = 8.0
let triangleCB: Double = 6.0

let hypotenuse: Double = sqrt(pow(triangleAC, 2) + pow(triangleCB, 2))
print(hypotenuse)
let area: Double = 0.5 * triangleAC * triangleCB
print(area)
let perimeter: Double = hypotenuse + triangleAC + triangleCB
print(perimeter)
