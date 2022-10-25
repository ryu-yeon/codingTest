import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let K = input[1]

var a = readLine()!.split(separator: " ").map{ Int($0)! }
    .sorted(by: <)
var b = readLine()!.split(separator: " ").map{ Int($0)! }.sorted(by: >)

for i in 0..<K {
    if a[i] < b[i] {
        swap(&a[i], &b[i])
    } else {
        break
    }
}
print(a.reduce(0, +))
