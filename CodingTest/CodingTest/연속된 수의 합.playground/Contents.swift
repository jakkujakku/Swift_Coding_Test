import Foundation

func solution(_ num: Int, _ total: Int) -> [Int] {
    var currentValue = 0
    var count = 0
    var answer = [Int]()
    var minusNum = num * -1
    var result = num + total
    
    for i in minusNum...result {
        count = 0
        currentValue = 0
        answer = []
        for j in i...result {
            count += 1
            currentValue += j
            answer.append(j)
            if count == num, currentValue == total {
                return answer
            }
        }
    }
    return []
}

let result = solution(5, 15)
