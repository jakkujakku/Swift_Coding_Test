import Foundation

func solution(_ id_pw: [String], _ db: [[String]]) -> String {
    for i in db {
        if i[0] == id_pw[0] && i[1] == id_pw[1] {
            return "login"
        } else if i[0] == id_pw[0] && i[1] != id_pw[1] {
            return "wrong pw"
        }
    }
    return "fail"
}

let test = solution(["meosseugi", "1234"], [["rardss", "123"], ["yyoom", "1234"], ["meosseugi", "1234"]])

let test1 = solution(["programmer01", "15789"], [["programmer02", "111111"], ["programmer00", "134"], ["programmer01", "1145"]])

let test2 = solution(["rabbit04", "98761"], [["jaja11", "98761"], ["krong0313", "29440"], ["rabbit00", "111333"]])
