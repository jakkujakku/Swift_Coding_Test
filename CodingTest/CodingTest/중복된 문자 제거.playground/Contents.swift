import Foundation

func solution(_ my_string:String) -> String {
    var answer = ""
    
    for i in my_string {
        if answer.contains(i) == false {
            answer.append(i)
        }
    }
    
    return answer
}

let result = solution("people")
