let N = Int(readLine()!)!
var arr: [Int] = []

for _ in 0..<N {
    let num = Int(readLine()!)!
    if num == 0 {
        arr.removeLast()
    } else {
        arr.append(num)
    }
}
print(arr.reduce(0) {$0 + $1})
