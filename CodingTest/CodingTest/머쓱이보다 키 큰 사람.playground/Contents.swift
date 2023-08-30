import Foundation

func solution(_ array: [Int], _ height: Int) -> Int {
    var answer = 0

    for i in 0 ..< array.count {
        if height < array[i] {
            answer += 1
        }
    }

    return answer
}

let result = solution([149, 180, 192, 170], 167)
