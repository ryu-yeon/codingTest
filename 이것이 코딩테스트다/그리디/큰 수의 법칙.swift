import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let arr = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)

let N = input[0]
let M = input[1]
let K = input[2]

var answer = 0

if N == 1 {
    print(arr[0] * M)
}

let count = M / (K + 1) * K + M % (K + 1)

answer += count * arr[0]
answer += (M - count) * arr[1]

print(answer)
