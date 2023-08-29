import Foundation

func solution(_ num: Int, _ k: Int) -> Int {
    var stringNum = String(num)
    var array = [String]()
    var answer = 0

    for i in stringNum {
        array.append(String(i))
    }

    for j in 0 ..< array.count {
        if array[j] == String(k) {
            answer = j + 1
            break
        } else {
            answer = -1
        }
    }

    return answer
}

let result = solution(29183, 1)
