import Foundation

let x = Int(readLine()!)!

let input = readLine()!.split(separator: " ").map{ Int($0)! }

var d = [Int](repeating: 0, count: 100)

d[0] = input[0]
d[1] = input[1]

for i in 2..<input.count {
    d[i] = max(d[i - 1], d[i - 2] + input[i])
}

print(d[x - 1])
