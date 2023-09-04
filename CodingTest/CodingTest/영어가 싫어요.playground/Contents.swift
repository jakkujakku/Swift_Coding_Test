import Foundation

func solution(_ numbers: String) -> Int64 {
    var current = ""
    var answer = ""
    
    for i in 0 ..< numbers.count {
        var index = numbers.index(numbers.startIndex, offsetBy: i)
        var element = String(numbers[index])
        current.append(element)
        
        switch current {
        case "one":
            answer.append("1")
            current = ""
            
        case "two":
            answer.append("2")
            current = ""
        case "three":
            answer.append("3")
            current = ""
        case "four":
            answer.append("4")
            current = ""
        case "five":
            answer.append("5")
            current = ""
        case "six":
            answer.append("6")
            current = ""
        case "seven":
            answer.append("7")
            current = ""
        case "eight":
            answer.append("8")
            current = ""
        case "nine":
            answer.append("9")
            current = ""
        case "zero":
            answer.append("0")
            current = ""
        default:
            break
        }
    }
    
    guard let result = Int64(answer) else { return 0 }
    
    return result
}
