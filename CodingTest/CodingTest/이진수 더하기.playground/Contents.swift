import Foundation

func solution(_ bin1: String, _ bin2: String) -> String {
    var currentValue = 0.0
    var arrayOfBin1 = [Int]()
    var arrayOfBin2 = [Int]()
    var answer = ""

    for i in bin1 {
        var element = String(i)
        arrayOfBin1.insert(Int(element) ?? 0, at: 0)
    }

    for j in bin2 {
        var element = String(j)
        arrayOfBin2.insert(Int(element) ?? 0, at: 0)
    }

    for x in 0..<arrayOfBin1.count {
        var element = 0.0
        if arrayOfBin1[x] == 1 && x == 0 {
            element = 1.0
            currentValue += element

        } else if arrayOfBin1[x] == 1 {
            element = pow(2, Double(x))
            currentValue += element

        } else {
            element = 0.0
            currentValue += element
        }
    }

    for y in 0..<arrayOfBin2.count {
        var element = 0.0
        if arrayOfBin2[y] == 1 && y == 0 {
            element = 1.0
            currentValue += element

        } else if arrayOfBin2[y] == 1 {
            element = pow(2, Double(y))
            currentValue += element

        } else {
            element = 0
            currentValue += element
        }
    }

    var value = Int(currentValue)

    if value == 0 {
        answer = String(value)
    } else {
        while value >= 1 {
            if value % 2 == 1 {
                answer.insert("1", at: answer.startIndex)
            } else {
                answer.insert("0", at: answer.startIndex)
            }
            value = value / 2
        }
    }

    return answer
}

// let result = solution("10", "11") // 101
// let result = solution("1001", "1111") // 1 1000
// let result = solution("000", "0000")

// 10 --> 2
// 11 --> 3
// 101 --> 5

// 1001 --> 9
// 1111 --> 15
// 1 1000 --> 24
