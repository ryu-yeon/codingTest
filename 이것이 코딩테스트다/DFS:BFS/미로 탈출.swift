import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let N = input[0]
let M = input[1]

var arr: [[Int]] = []

for _ in 1...N {
    let str = readLine()!
    var x: [Int] = []
    for i in str {
        x.append(Int(String(i))!)
    }
    arr.append(contentsOf: [x])
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

var queue: [(Int, Int)] = [(0, 0)]

func bfs(x: Int, y: Int) -> Int{
    while !queue.isEmpty {
        let (X, Y) = queue.removeFirst()
        for i in 0...3 {
            let nx = X + dx[i]
            let ny = Y + dy[i]
            if nx < 0 || ny < 0 || nx >= N || ny >= M {
                continue
            }
            if arr[nx][ny] == 0 {
                continue
            }
            if arr[nx][ny] == 1 {
                if !(nx == 0 && ny == 0) {
                    arr[nx][ny] = arr[X][Y] + 1
                    queue.append((nx, ny))
                }
            }
        }
    }
    return arr[N-1][M-1]
}
print(bfs(x: 0, y: 0))

