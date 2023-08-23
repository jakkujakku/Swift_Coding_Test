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

// 문제 설명 
/*
소인수분해란 어떤 수를 소수들의 곱으로 표현하는 것입니다. 
예를 들어 12를 소인수 분해하면 2 * 2 * 3 으로 나타낼 수 있습니다. 
따라서 12의 소인수는 2와 3입니다. 
자연수 n이 매개변수로 주어질 때 n의 소인수를 오름차순으로 담은 배열을 return하도록 solution 함수를 완성해주세요.
*/

// 문제 핵심
// 1. 소인수 찾기
// 2. 오름차순으로 정렬

// 문제 해결 과정
// 1. 배열이 [2,2,3,4]로 나오기 때문에, Set 을 사용해 중복값 제거
// 2. 현재 값을 나누기 변수를 이용해, 나누기
// 2-1. 현재 값이 안 나누어 진다면, 나누기 변수에 +1 
// 3. 나눌 수 있는 나누기 변수를 Set 값에 삽입
// 4. 문제에서는 Int 배열을 요구했으므로 Set값을 Int 배열에 값을 전달 후 출력