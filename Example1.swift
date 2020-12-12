import Foundation


// MARK: - EXAMPLES
/// Ways to print variables
func printNumber(inputNumber: Int) {
    print("Your number is: ", inputNumber)
    print("Your number is: \(inputNumber)")
}

func addFiveTo(inputNumber: Int) -> Int {
    /// use 'var' if your variable changes
    var result = 0
    result = inputNumber + 5
    return result
}

func isEven(inputNumber: Int) -> Bool {
    return inputNumber % 2 == 0
}

func loopExample(targetNum: Int) {
    /// loop from 1 to targetNum
    for num in 1...targetNum {
        print(num)
    }
}



// MARK: - QUESTIONS
func isDivisibleByThree(inputNumber: Int) -> Bool {
    return inputNumber % 3 == 0
}

//print(isDivisibleByThree(inputNumber: 300))

func sumOfThreeNumbers(firstNum: Int, secondNum: Int, thirdNum: Int) -> Int {
    var sum = firstNum + secondNum + thirdNum
    return sum
}

//print(sumOfThreeNumbers(firstNum: 1, secondNum: 2, thirdNum: 3))

/// divisible by 3 or 5 but not both
func fizzBuzz(num: Int) -> Bool {
    if num % 3 == 0 && num % 5 == 0 {
        return false
    } else if num % 3 == 0 || num % 5 == 0 {
        return true
    } else {
        return false
    }
}
//print (fizzBuzz(num: 20))

/// sum all numbers from 1 to target
func sumFromOne(targetEndNum: Int) -> Int {
    var sum = 0
    for num in 1...targetEndNum {
        sum += num
    }
    return sum  
}

//print(sumFromOne(targetEndNum: 4))

/// sum only even numbers
func sumEvenFromOne(targetEndNum: Int) -> Int {
    var evenSum = 0
    for num in 1...targetEndNum {
        if num % 2 == 0 {
            evenSum += num
        }
    }
    return evenSum
}

//print(sumEvenFromOne(targetEndNum: 5))

/// loop from 1 to target, sum all numbers that returns true for fizzbuzz
func sumFizzBuzz(targetEndNum: Int) -> Int {
    var sum = 0
    for i in 1...targetEndNum {
        if fizzBuzz(num: i) == true {
            sum += i
        }
    }
    return sum
}

//print(sumFizzBuzz(targetEndNum: 15))

func isPrime(num: Int) -> Bool {
    if num == 0 || num == 1 {
        return false
    }
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    return true
}

//print(isPrime(num: 7))

/// Take average of two numbers, if there is a decimal place, round up
/// Input 5 and 6 will return 6
func averageTwoNumberRoundUp(firstNum: Int, secondNum: Int) -> Int {
    var avg:Float = 0.0
    avg = Float(firstNum + secondNum)/2
    return Int(round(avg))
}

//print(averageTwoNumberRoundUp(firstNum: 5, secondNum:6))
