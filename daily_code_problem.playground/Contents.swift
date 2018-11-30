import UIKit

/* day 01
 check all sums of array[i] + array[j] where i < jGiven a list of numbers and a number k, return whether any two numbers from the list add up to k.
For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
 */

//check all sums numbers[i] + numbers[j] where i < j
func containsPairWithSum(array: [Int], target: Int) -> Bool {
    
    for i in 0..<array.count {
        for j in i+1..<array.count {
            if array[i] + array[j] == target {
                return true
            }
        }
    }
    return false
}

containsPairWithSum(array: [10, 15, 3, 7], target: 17)

// more functional way
func checkPairs(array: [Int], target: Int) -> Bool {
   return array.enumerated().contains(where: { (i, x) -> Bool in
        array[i+1 ..< array.count].contains(target - x)
    })
}

checkPairs(array: [10, 15, 3, 7], target: 17)

/* day 02
 Product of Everything Else
 
 Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i.
 
 For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6].
*/

func productOfEverythingElse(array: [Int]) -> [Int] {
    
    var product = 1
    var productArray = [Int]()
    
    for index in 0..<array.count {
        for value in array {
            if array[index] != value {
                product *= value
                print(product)
            }
        }
        productArray.append(product)
        product = 1
    }
    return productArray
}

print(productOfEverythingElse(array:  [1, 2, 3, 4, 5]))
