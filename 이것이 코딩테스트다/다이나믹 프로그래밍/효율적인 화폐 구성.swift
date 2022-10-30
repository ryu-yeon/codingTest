import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)!}
let N = input[0]
let M = input[1]

var arr: [Int] = []
var d = [Int](repeating: 10001, count: M + 1)

for _ in 0..<N {
    let x = Int(readLine()!)!
    if x <= M {
        arr.append(x)
    }
}

d[0] = 0

for i in arr {
    for j in i...M {
        if d[j - i] != 10001 {
            d[j] = min(d[j], d[j - i] + 1)
        }
    }
}

print(d[M] == 10001 ? "-1" : d[M])
