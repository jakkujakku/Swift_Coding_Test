import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    
    var count = 0
    
    for i in 0..<s1.count {
        for j in 0..<s2.count {
            if s1[i] == s2[j] {
                count += 1
            }
        }
    }
    return count
}

let result = solution(["a", "b", "c"], ["com", "b", "d", "p", "c"])
