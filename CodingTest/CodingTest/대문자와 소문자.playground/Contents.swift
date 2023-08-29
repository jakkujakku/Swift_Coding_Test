import Foundation

func solution(_ my_string: String) -> String {
    var answer = ""

    for i in my_string {
        if i.isLowercase == true {
            var upper = String(i).uppercased()
            answer.append(upper)
        } else {
            var lower = String(i).lowercased()
            answer.append(lower)
        }
    }

    return answer
}

let result = solution("cccCCC")
