import Foundation

// 정답 - [5, 3, 1, 1, 1, 0, 1]
func solution(_ num_list: [Int]) -> [Int] {
    return num_list.reversed()
}

// 버블 정렬 사용(값 다르게 나옴) - [5, 3, 1, 1, 1, 1, 0]
func solutionBubble(_ num_list: [Int]) -> [Int] {
    var answer = num_list

    for i in 0 ..< num_list.count {
        for j in i ..< num_list.count {
            if answer[i] < answer[j] {
                var temp = answer[j]
                answer[j] = answer[i]
                answer[i] = temp
            }
        }
    }
    return answer
}

let result = solution([1, 0, 1, 1, 1, 3, 5])
let resultBubble = solutionBubble([1, 0, 1, 1, 1, 3, 5])
print(result)
print(resultBubble)

// 버블 정렬 사용
// 1. temp 변수에 answer[j] 넣는다.
// 2. answer[j]에 answer[i] 값을 넣는다.
// 3. answer[i]에 temp 를 넣는다.
