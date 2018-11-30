import UIKit

// HackerRank

// Compare the Triplets
func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    
    var result = [0, 0]
  
    let aResult = zip(a, b).filter { $0 > $1 }.count
    let bResult = zip(b, a).filter(>).count
    
    result[0] = aResult
    result[1] = bResult
    
    return result
}

let alice = [17, 28, 30]
let bob = [99, 16, 8]

print(compareTriplets(a: alice, b: bob))


// A Very Big Sum
func aVeryBigSum(ar: [Int]) -> Int {
    return ar.reduce(0) { $0 + $1 }
}

let bigValues = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]

//print(aVeryBigSum(ar: bigValues))


// Diagonal Diffference
func diagonalDifference(arr: [[Int]]) -> Int {
    
    var primarySum = 0
    var secondarySum = 0
    var primaryPosition = 0
    var secondaryPosition = 0
    
    for line in arr {
        primarySum += line[primaryPosition]
        primaryPosition += 1
    }
    
    for line in (0...arr.count-1).reversed() {
        secondarySum += arr[line][secondaryPosition]
        secondaryPosition += 1
    }
    
    return (abs(primarySum - secondarySum))
}

var arrTwoD = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]

print(diagonalDifference(arr: arrTwoD))


// Plus Minus
// Given an array of integers, calculate the fractions of its elements that are positive, negative, and are zeros. Print the decimal value of each fraction on a new line.

func plusMinus(arr: [Int]) {
    let arrSize = Double(arr.count)
    let positives = (Double (arr.filter { $0 > 0}.count)) / arrSize
    let negatives = (Double (arr.filter { $0 < 0 }.count)) / arrSize
    let zeros = (Double (arr.filter { $0 == 0 }.count)) / arrSize
    
    print(String(format: "%.6f", arguments: [positives]))
    print(String(format: "%.6f", arguments: [negatives]))
    print(String(format: "%.6f", arguments: [zeros]))

}

plusMinus(arr: [-4, 3, -9, 0, 4, 1])

