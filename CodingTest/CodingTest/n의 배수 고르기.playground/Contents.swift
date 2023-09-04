import Foundation

func solution(_ n: Int, _ numlist: [Int]) -> [Int] {
    var answer = [Int]()

    for i in numlist {
        if i % n == 0 {
            answer.append(i)
        }
    }

    return answer
}

let test = solution(3, [4, 5, 6, 7, 8, 9, 10, 11, 12])
