import Foundation

let N = Int(readLine()!)!

var input: [Int] = []

for _ in 0..<N {
    input.append(Int(readLine()!)!)
}
input.sort()
let first = Int(round(Double(input.reduce(0) {$0 + $1} ) / Double(N)))
let secound = input[N / 2]

var dict: [Int: Int] = [:]
for i in input {
    dict[i, default: 0] += 1
}

let maxValue = dict.max(by: {$0.value < $1.value})!.value
var mod = dict.filter({$0.value == maxValue}).keys.sorted()

var third = 0
if mod.count > 1 {
    third = mod[1]
} else {
    third = mod[0]
}

let fourth = input[N - 1] - input[0]

print(first)
print(secound)
print(third)
print(fourth)

