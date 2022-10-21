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

for i in 1...M {
    if i % K == 0 {
        answer += arr[1]
    } else {
        answer += arr[0]
    }
}

print(answer)
