import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

var N = input[0]
let K = input[1]

var answer = 0

while (N != 1) {
    if N % K == 0 {
        N /= K
    } else {
        N -= 1
    }
    answer += 1
}

print(answer)
