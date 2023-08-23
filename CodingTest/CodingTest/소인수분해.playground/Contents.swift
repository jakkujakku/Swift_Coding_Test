import Foundation

func solution(_ n:Int) -> [Int] {
    var answer : Set = Set<Int>()
    var divide = 2
    var currentValue = n
    
    while currentValue != 1 {
        if currentValue % divide == 0 {
            answer.insert(divide)
            currentValue = currentValue / divide
        } else {
            divide += 1
        }
    }
    
    var result = [Int]()
    result = answer.sorted()
    return result
}

let result = solution(12)
print(result)
