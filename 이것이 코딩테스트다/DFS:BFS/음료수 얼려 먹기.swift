import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let N = input[0]
let M = input[1]

var arr: [[Int]] = []

var visited = [Bool](repeating: false, count: N)

for _ in 1...N {
    let str = readLine()!
    var x: [Int] = []
    for i in str {
        x.append(Int(String(i))!)
    }
    arr.append(contentsOf: [x])
}

func dfs(x: Int, y: Int) -> Bool {
    if x <= -1 || x >= N || y <= -1 || y >= M {
        return false
    }
    if arr[x][y] == 0 {
        arr[x][y] = 1
        dfs(x: x - 1, y: y)
        dfs(x: x, y: y - 1)
        dfs(x: x + 1, y: y)
        dfs(x: x, y: y + 1)
        return true
    }
    return false
}

var answer = 0

for i in 0..<N {
    for j in 0..<M {
        if dfs(x: i, y: j) {
            answer += 1
        }
    }
}

print(answer)

