import Foundation

/*
 - 문제 설명 : 정수가 담긴 리스트 num_list가 주어질 때, num_list의 원소 중 짝수와 홀수의 개수를 담은 배열을 return 하도록 solution 함수를 완성해보세요.
 
 - 제한사항
 1 ≤ num_list의 길이 ≤ 100
 0 ≤ num_list의 원소 ≤ 1,000
 
 - 입출력 예
 num_list  /  result
 [1, 2, 3, 4, 5]  /  [2, 3]
 [1, 3, 5, 7]  /  [0, 4]
 
 - 입출력 예 설명
 
 - 입출력 예 #1
 [1, 2, 3, 4, 5]에는 짝수가 2, 4로 두 개, 홀수가 1, 3, 5로 세 개 있습니다.
 
 - 입출력 예 #2
 [1, 3, 5, 7]에는 짝수가 없고 홀수가 네 개 있습니다.
 */

func solution(_ num_list: [Int]) -> [Int] {
    var even = 0 // 짝수
    var odd = 0 // 홀수
    
    for i in num_list {
        if i % 2 == 0 {
            even += 1
        } else {
            odd += 1
        }
    }
    
    return [even, odd]
}

let resultOfSolution = solution([1, 3, 5, 7])
print(resultOfSolution)

/*
 문제 해결
 1. 홀수, 짝수 값을 저장할 변수 생성
 2. 홀수, 짝수를 나눌 기준 - 나눠서 0이 되느냐, 나눠서 1이 되느냐로 구분
 3. 나눈 값이 0이라면, 짝수 변수 +1, 1이라면, 홀수 변수 +1
 4. Int 값을 배열로 반환하는 문제였으므로, [even, odd] 값들을 배열로 반환
 */
