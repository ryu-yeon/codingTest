import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let N = input[0]
let M = input[1]
let arr = readLine()!.split(separator: " ").map{Int($0)!}

var start = 0
var end = arr.max()!
var total = 0
var mid = 0
var result = 0

while (start <= end) {
    total = 0
    mid = (start + end) / 2
    for i in arr {
        if i > mid {
            total += i - mid
        }
    }
    if total < M {
        end = mid - 1
    } else {
        result = mid
        start = mid + 1
    }
}
print(result)
