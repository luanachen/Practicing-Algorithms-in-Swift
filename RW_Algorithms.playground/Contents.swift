import UIKit

func shortArray(longArray: [String]) -> String {

    var count = 0
    var result = ""
    var actualLetter = longArray.first

    for i in 0...longArray.count-1 {

        if actualLetter == longArray[i] {
            count += 1
        } else {
            result.append("\(actualLetter!)\(count)")
            actualLetter = longArray[i]
            count = 1
        }
    }

    result.append("\(actualLetter!)\(count)")

    return result
}

shortArray(longArray: ["a", "a", "b", "b"])
