import Foundation

func solution(_ keyinput: [String], _ board: [Int]) -> [Int] {
    var answer = [0, 0]
    var element = 0
    var x = 0
    var y = 0

    var boardX = board[0] / 2
    var boardY = board[1] / 2

    for i in keyinput {
        switch i {
        case "up":
            if y >= boardY {
                y += 0
            } else {
                y += 1
            }
        case "down":
            if y <= -boardY {
                y -= 0
            } else {
                y -= 1
            }
        case "left":
            if x <= -boardX {
                x -= 0
            } else {
                x -= 1
            }
        case "right":
            if x >= boardX {
                x += 0
            } else {
                x += 1
            }
        default:
            break
        }
    }

    return [x, y]
}
