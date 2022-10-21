import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

let N = input[0]

var arr:[[Int]] = []
var answer = 0

for i in 0..<N {
    arr.append(readLine()!.split(separator: " ").map{Int($0)!}.sorted())
    if answer < arr[i][0] {
        answer = arr[i][0]
    }
}

print(answer)

