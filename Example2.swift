// MARK: - QUESTIONS
/// 1. Write a function that takes an array of numbers and returns an array with each of the numbers multiplied by 2
func arrayMultipliedByTwo(original: [Int]) -> [Int] {
    var arr = [Int]()
    for i in 0..<original.count {
        arr.append(original[i] * 2)
    }
    return arr
}

var values = [20, 2, 3]
print(arrayMultipliedByTwo(original: values))


/// 2. Write a function to return the last half of the array
func lastHalf(original: [Any]) -> [Any] {
    let midpoint = original.count/2
    return Array(original.dropFirst(midpoint))
}

let array = ["1", "2", "3", "4", "5", "6", "7"]
print(lastHalf(original: array))

let nums = [1,2,3,4,5]
print(lastHalf(original: nums))


/// 3. Write a function that can be called with the commented code below and return [5, 6, 7, 8, 9, 10]

func createCustomArray(from: Int, to: Int) -> [Int] {
    var arr = [Int]()
    for num in from...to {
        arr.append(num)
    }
    return arr
}


let customArray = createCustomArray(from: 5, to: 10)
print(customArray)


/// 4. Write a function that takes in two array and returns a combined array from adding each element at the same positions together
/// Input [2,3,4] and [7,6,5] will return [9,9,9]
func addElements(arrOne: [Int], arrTwo: [Int]) -> [Int] {
    var result = [Int]()
    
    for i in 0..<arrOne.count {
        result.append(arrOne[i] + arrTwo[i])
    }
    
    return result
}

var one = [2,3,4]
var two = [7,6,5]


print(addElements(arrOne:one, arrTwo:two))



/// 5. Create this 2-D array using for loops
/*
    [[1,2,3],
    [4,5,6],
    [7,8,9]]
 */
var arr = [[Int]]()
for row in 0...2 {
    // Append an empty row.
    arr.append([Int]())
    
    if row == 0 {
        for i in 1...3 {
            arr[row].append(i)
        }
    }
    else if row == 1 {
        for i in 4...6 {
            arr[row].append(i)
        }
    }
    else {
        for i in 7...9 {
            arr[row].append(i)
        }
    }
}

print(arr)



/// 6. Write a function that returns the number of pairs of elements that sums up to 0
/// Input [1,2,3,-1,-2,-4] -> Output 2
func pairsEqualToNum(arr: [Int], sum: Int) -> Int {
    var pairs = 0
    //var temp = arr.count/2 //check 
    for i in 0..<arr.count {
        for j in 0..<arr.count {
            if(arr[i] + arr[j]) == sum {
                pairs += 1
            }
        }
    }
    return pairs/2 //since pairs will be doubled after iterating through the array
}

var input = [1,2,3,-1,-2,-4]
var num = 0
print(pairsEqualToNum(arr: input, sum: num))