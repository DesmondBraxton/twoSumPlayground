import Foundation

// Return a Boolean if there are 2 numbers in the array that equal a sum
let numbers = [1,3,6,7,7,12,14]

// 1. Brute Force - Nested For-Loop compare all (n2) in Big O notation
func bruteForceTwoSum(array: [Int], sum: Int) -> Bool {
    
    for i in 0..<array.count {
// Iterates through every object in the array; iterating over an array means accessing each element of array one by one.
        for j in 0..<array.count where j != i {
//the not statement(!) is to exlude the value of the current location from the number youre comparing
            if array[j] + array[i] == sum {
                print("True: \(array[i]) + \(array[j])")
                return true
            } else {
                print("False: \(array[i]) + \(array[j])")
            }
        }
    }
    
    return false
}

bruteForceTwoSum(array: numbers, sum: 19)



let numbers2 = [1,3,6,7,7,12,14]
// 2. BINARY SEARCH for compliment (because it's sorted) - n log n. For example 3 is a compliment for 7 if the intended sum is 10

func twoSumBinarySearch(array: [Int], sum: Int) -> Bool {
    for i in 0..<array.count {
        
        let compliment = sum - array[i]
        
        var tempArray = array
        tempArray.remove(at: i)
        
        let hasCompliment = binarySearch(array: tempArray, key: compliment)
        print("num\(array[i]) - \(hasCompliment)")
        
        if hasCompliment == true {
            print("True - (num: \(array[i]), compliment: \(compliment)")
            return true
        }
    }
    if array.count == 0 { return false }
}

twoSumBinarySearch(array: numbers2, sum: 10)



let numbers3 = [1,3,6,7,7,12,14]
// 3. Move pointer from either end - LINEAR O(n)
// Most effecient for the situation

func twoSumPointers(array: [Int], sum: Int) -> Bool {
    
    var lowIndex = 0
    var highIndex = array.count - 1
    
    while lowIndex < highIndex {
        
        let sumOfItems = array[lowIndex] + array[highIndex]
        
        if sumOfItems == sum {
            print("Sum of \(array[lowIndex]) and (array[highIndex])) = \(sum)")
            return true
        } else if sumOfItems < sum {
            lowIndex += 1
            
        } else if sumOfItems > sum {
            highIndex -= 1
        }
    }
    
    print("Pointers have crossed")
    return false
}

twoSumPointers(array: numbers3, sum: 26)
























// Binary Search Helper Method
func binarySearch(array: [Int], key: Int) -> Bool {
    
    if array.count == 0 { return false }
    
    let minIndex: Int = 0
    let maxIndex: Int = array.count - 1
    let midIndex: Int = maxIndex / 2
    
    if key > array[maxIndex] || key < array[minIndex] {
        return false
    }
    
   let midValue = array[midIndex]
    
    if key > midValue {}
    

