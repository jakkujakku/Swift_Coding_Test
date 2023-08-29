import Foundation

func solution(_ my_string: String, _ num1: Int, _ num2: Int) -> String {
    var answer = ""
    var result = [String]()

    for i in my_string {
        result.append(String(i))
    }
    
    var temp = result[num1]
    result[num1] = result[num2]
    result[num2] = temp
    
    for j in result {
        answer.append(j)
    }
    
    return answer
}

let result = solution("hello", 1, 2) // "hlelo"
