import Foundation

func solution(_ numbers: [Int]) -> Int {
    var numberList = numbers
    var answer = 0
    var maxA = 0
    var maxB = 0

    // maxA
    for i in 0 ..< numberList.count {
        for j in i ..< numberList.count {
            if numberList[i] < numberList[j] {
                var temp = numberList[j]
                numberList[j] = numberList[i]
                numberList[i] = temp
            }
        }
        maxA = numberList[0]
    }

    // maxB
    for x in 0 ..< numberList.count {
        for y in x ..< numberList.count {
            if numberList[x] < numberList[y] {
                var temp = numberList[y]
                numberList[y] = numberList[x]
                numberList[x] = temp
            }
        }
        maxB = numberList[1]
    }

    answer = maxA * maxB
    return answer
}

let result = solution([0, 31, 24, 10, 1, 9])
// let result = solution([])
// print(result)

/*
 - 문제 설명 : 정수 배열 numbers가 매개변수로 주어집니다. numbers의 원소 중 두 개를 곱해 만들 수 있는 최댓값을 return하도록 solution 함수를 완성해주세요.

  - 제한사항
  0 ≤ numbers의 원소 ≤ 10,000
  2 ≤ numbers의 길이 ≤ 100

  - 입출력 예
  numbers  /  result
  [1, 2, 3, 4, 5]  /  20
  [0, 31, 24, 10, 1, 9]  /  744

  - 입출력 예 설명
  입출력 예 #1
  두 수의 곱중 최댓값은 4 * 5 = 20 입니다.
  입출력 예 #1
  두 수의 곱중 최댓값은 31 * 24 = 744 입니다.
 */
