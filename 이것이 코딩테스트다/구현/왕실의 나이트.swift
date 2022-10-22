import Foundation

let input = readLine()!.map{$0}

let dic: [String: Int] = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5, "f": 6, "g": 7, "h": 8]

let X = dic[String(input[0])]!
let Y = Int(String(input[1]))!

let arrX: [Int] = [-2, -2, -1, -1, 1, 1, 2, 2]
let arrY: [Int] = [1, -1, 2, -2, 2, -2, 1, -1]

var answer = 0

for i in 0..<8 {
    var x = X
    var y = Y
    x += arrX[i]
    y += arrY[i]
    if x >= 1 && x <= 8 && y >= 1 && y <= 8 {
        answer += 1
    }
}

print(answer)
