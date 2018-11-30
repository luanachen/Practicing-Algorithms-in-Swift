
import UIKit

// Factorial:
func factorial(_ number: Double) -> Double {
    if number > 0 {
        return number * factorial(number - 1)
    } else {
        return 1
    }
}

//factorial(3)
//factorial(0)
//factorial(1)
//factorial(100)

//======================================================

// print triangle with *

func printTriangle(_ rows: Int) {
    for i in 1...rows {
        for _ in 1...i {
            print("*", terminator: "")
        }
        print("")
    }
}

printTriangle(4)

//======================================================

// Binary Gap
func binaryGap(_ n: Int) -> Int {
    let binary = String(n, radix: 2)
    var biggestBinaryGap = 0
    var numOfZeros = 0
    
    for i in binary {
        if i == "0" {
            numOfZeros += 1
        }
        if i == "1" {
            if numOfZeros > biggestBinaryGap {
                biggestBinaryGap = numOfZeros
            }
            numOfZeros = 0
        }
    }
    return biggestBinaryGap
}

//binaryGap(9)

//======================================================

// A zero-indexed array A consisting of N integers is given. Rotation of the array means that each element is shifted right by one index, and the last element of the array is moved to the first place. For example, the rotation of array A = [3, 8, 9, 7, 6] is [6, 3, 8, 9, 7] (elements are shifted right by one index and 6 is moved to the first place).
// The goal is to rotate array A K times; that is, each element of A will be shifted to the right K times.
// Cyclic Rotation:
func cyclicRotation(_ A: [Int], _ K: Int) -> [Int]{
    let N = A.count
    var result = A
    for i in 0..<N {
        let newIndex = (i + K) % N
        result[i] = A[newIndex]
    }
    return result
}

cyclicRotation([0, 1, 2, 3, 4, 5], 4)

//======================================================

// Odd Occurences in Array:

func oddOccu(_ A: [Int]) -> Int {
    var B = [Int: Int]()
    for (i, x) in A.enumerated() {
        if B[x] != nil {
            B.removeValue(forKey: x)
        } else {
            B.updateValue(i, forKey: x)
        }
    }
    return B.popFirst()?.key ?? 0
}

//oddOccu([9, 3, 9, 3, 9, 7, 9])

//======================================================

// Find number whole squares within the interval

public func solution(_ A : Int, _ B : Int) -> Int {

    var count = 0
    let range = A...B

    for i in range {
        if Double(i).squareRoot().rounded() == Double(i).squareRoot(){
            count += 1
        }
    }
    return count
}

solution(4, 17)


//======================================================





