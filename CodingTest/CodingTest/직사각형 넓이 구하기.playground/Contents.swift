import Foundation

func solution(_ dots: [[Int]]) -> Int {
    var answer = 0
    var xArray: [Int] = []
    var yArray: [Int] = []

    for i in 0 ..< dots.count {
        var elementX = dots[i][0]
        var elementY = dots[i][1]
        xArray.append(elementX)
        yArray.append(elementY)
    }

    for x in 0 ..< xArray.count {
        for y in x ..< xArray.count {
            if xArray[x] < xArray[y] {
                var temp = xArray[y]
                xArray[y] = xArray[x]
                xArray[x] = temp
            }
            if yArray[x] < yArray[y] {
                var temp = yArray[y]
                yArray[y] = yArray[x]
                yArray[x] = temp
            }
        }
    }

    var xArrayOfMax = xArray[0]
    var xArrayOfMin = xArray[3]

    var yArrayOfMax = yArray[0]
    var yArrayOfMin = yArray[3]

    answer = (xArrayOfMax - xArrayOfMin) * (yArrayOfMax - yArrayOfMin)
    print(answer)

    return answer
}

let result = solution([[1, 1], [2, 1], [2, 2], [1, 2]])
// let result = solution([[-1, -1], [1, 1], [1, -1], [-1, 1]])

// x좌표 최대값 - x좌표 최솟값 * y좌표 최대값 - y좌표 최솟값
