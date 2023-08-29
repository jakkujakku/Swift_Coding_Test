import Foundation

func solution(_ my_string: String) -> String {
    var lowerArray = [String]()
    var utf8Array = [Int]()
    var answer = ""
    
    for i in my_string {
        var value = i.lowercased()
        lowerArray.append(String(value))
    }
    
    for j in 0 ..< lowerArray.count {
        var value = lowerArray[j]
        var item = Int(value.utf8CString.first ?? 0)
        utf8Array.append(item)
    }
    
    for x in 0 ..< utf8Array.count {
        for y in x ..< utf8Array.count {
            if utf8Array[x] > utf8Array[y] {
                var temp = utf8Array[x]
                utf8Array[x] = utf8Array[y]
                utf8Array[y] = temp
            }
        }
    }
    
    for z in utf8Array {
        var value = UnicodeScalar(z)
        
        if let item = value {
            answer.append(String(item))
        }
    }
    
    return answer
}

let result = solution("Bcad") // "abcd"
