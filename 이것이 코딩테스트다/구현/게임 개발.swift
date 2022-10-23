import Foundation

let size = readLine()!.split(separator: " ").map{Int($0)!}
let player = readLine()!.split(separator: " ").map{Int($0)!}

let N = size[0]
let M = size[1]
var x = player[0]
var y = player[1]

var direction = player[2]

let dx = [-1, 0, 1, 0]
let dy = [0, 1, 0, -1]

var map: [[Int]] = []

var turnTime = 0

var answer = 1

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    map.append(input)
}

var d = map
d[y][x] = 1

while true {
    if x + dx[direction] >= 0 && x + dx[direction] <= M && y + dy[direction] >= 0 && y + dy[direction] <= N {
        turnLeft()
        var nx = x + dx[direction]
        var ny = y + dy[direction]
        if d[ny][nx] == 0 && map[ny][nx] == 0 {
            answer += 1
            d[ny][nx] = answer
            x = nx
            y = ny
            turnTime = 0
            continue
        } else {
            turnTime += 1
        }
        if turnTime == 4 {
            nx = x - dx[direction]
            ny = y - dy[direction]
            if map[ny][nx] == 0 {
                x = nx
                y = ny
            } else {
                break
            }
            turnTime = 0
        }
    }
}
print(answer)

func turnLeft() {
    if direction == 0 {
        direction = 3
    } else {
        direction -= 1
    }
}
