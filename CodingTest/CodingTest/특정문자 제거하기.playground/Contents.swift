import Foundation

func solution(_ my_string: String, _ letter: String) -> String {
    var answer = ""
    
    for i in my_string {
        if String(i) != letter {
            answer.append(i)
        }
    }
    return answer
}

let resultOfSolution = solution("abcdef", "f")
print(resultOfSolution)

/*
 - 문제 설명
 문자열 my_string과 문자 letter이 매개변수로 주어집니다. my_string에서 letter를 제거한 문자열을 return하도록 solution 함수를 완성해주세요.

 - 제한사항
 1 ≤ my_string의 길이 ≤ 100
 letter은 길이가 1인 영문자입니다.
 my_string과 letter은 알파벳 대소문자로 이루어져 있습니다.
 대문자와 소문자를 구분합니다.

 - 입출력 예
 my_string  /  letter  /  result
 "abcdef"  /  "f"  /  "abcde"
 "BCBdbe"  /  "B"  /  "Cdbe"

 - 입출력 예 설명
 1. 입출력 예 #1
 "abcdef" 에서 "f"를 제거한 "abcde"를 return합니다.
 2. 입출력 예 #2
 "BCBdbe" 에서 "B"를 모두 제거한 "Cdbe"를 return합니다.
 */

// 나의 문제 풀이
// 1. 특정 문자를 제거 하기 위해 해당 문자열을 전체 반복
// 2. letter과 맞는 구문 찾기 위해 -> if문 활용
// 3. 일치하지 않는 구문만 answer에 추가 후 출력