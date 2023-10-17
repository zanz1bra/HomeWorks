import UIKit

/*
 Exercise 1.1
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result

    var result = numberOne
       
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
    return result
 */

enum CalculationType: String {
    case addition = "Adding"
    case subtraction = "Subtracting"
    case multiplication = "Multiplying"
    case division = "Dividing"
}

func calculateResult(firstNumber numberOne: Int, andSecondNumber numberTwo: Int, withCalculationType calculationType: CalculationType) -> Int {
    
    var result = numberOne
    
    switch calculationType {
    case .addition: result += numberTwo
    case .subtraction: result -= numberTwo
    case .multiplication: result *= numberTwo
    case .division: result /= numberTwo
    }
    
    print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    return result
}

/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/

let x: Int = 10
let y: Int = 3

calculateResult(firstNumber: x, andSecondNumber: y, withCalculationType: .addition)
calculateResult(firstNumber: x, andSecondNumber: y, withCalculationType: .subtraction)
calculateResult(firstNumber: x, andSecondNumber: y, withCalculationType: .multiplication)
calculateResult(firstNumber: x, andSecondNumber: y, withCalculationType: .division)

/*
Exercise 2

Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int

 Create func getSpecs() print it with elements provided above
 */

struct Car{
    var name: String
    var productionYear: Int
    var horsePower: Int
    
    func getSpecs() {
        print("My car is \(name), it was produced in \(productionYear) and it has \(horsePower) horse power")
    }
}

let myCar = Car(name: "Volvo", productionYear: 2020, horsePower: 56)
myCar.getSpecs()
