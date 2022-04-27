import Foundation

let number = readLine()!
var num: Int = Int(number)!
var sum = 0
var x: Int = 0
var first: Int = 1
var second: Int = 1
for i in 1... {
    sum += i
    if (sum >= num) {
        x = i
        sum -= i
        break
    }
}
if (x % 2 == 0) {
    first += num - sum - 1
    second = x - (num - sum - 1)
} else {
    first = x - (num - sum - 1)
    second += num - sum - 1
}
print("\(first)/\(second)")
