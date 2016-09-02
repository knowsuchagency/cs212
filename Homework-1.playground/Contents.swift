/*:

## 1. Optional String

 The var `s` might be a string, or it might be nil. Conditionally unwrap s using a `if let` statement. If `s` can be safely unwraped then print it using `print(s)`.
*/

let s: String?
s = generateStringOrNil()

// Your code for question 1 here.

if let stringOrNil = s {
    print("\(stringOrNil)")
}

/*:
 ---
## 2. Counting nils

The `generateRandomArrayOfIntsAndNils` function creates an array that is a random mix of Int values and nils. 
 
Write code that counts the number of nil values in array1
*/

let array1: [Int?]
array1 = generateRandomArrayOfIntsAndNils()

var total: Int = 0

// Your code for question 2 here

func sumNils(seq: [Int?]) -> Int {
    var sum = 0
    for num in seq {
        switch num {
        case .Some: break
        case .None: sum += 1
        }
    }
    return sum
}


total = sumNils(array1)



/*:
 ---
## 3. Mean

Write code that calculates the mean value of the non nil elements in array1.
*/
let array2 = generateRandomArrayOfIntsAndNils()

// Your code for question 3 here.

func meanOfNonNils(seq: [Int?]) -> Float {
    let nonNilsAmount = Float(seq.flatMap{$0}.count)
    var total = 0
    for case let num? in seq {
        total += num
    }
    return Float(total) / nonNilsAmount
}

meanOfNonNils(array2)

/*:
 ---
## 4. New Array

 Write code that creates a new array named nilFree that has the same elements
 as array3, except without the nil values. The elements in nilFree should be
 Ints, not Int optionals.
 
*/

let array3 = generateRandomArrayOfIntsAndNils()

// Your code for question 4 here.

 let filteredArray = array3.flatMap{$0}
 filteredArray
    
/*
 ---
## 5. Sort array

 Write code that will sort array4 using your own logic. You might want to
 review the logic for Selection Sort or even Bubble Sort. Find a sort
 algorithm that you like in a language that you are familiar with and then
 translate it to Swift. Resist the temptation to find a sort online that
 is already written in swift. Do not use Swift's sort method.

 Note that array4 is declared with var, so that it is a mutable array.
*/
 
var array4 = generateRandomArrayOfIntsAndNils()

// Your code for question 5 here.

func bubbleSort(optionalNumbers: [Int?]) -> [Int] {
    var numbers = optionalNumbers.flatMap{$0}
    var switched = true
    while switched {
        switched = false
        for i in 0..<numbers.count-1 {
            if numbers[i] > numbers[i+1] {
                switched = true
                let temp = numbers[i]
                numbers[i] = numbers[i+1]
                numbers[i+1] = temp
            }
        }
    }
    return numbers
}

var sortedNumbers = bubbleSort(array4)

