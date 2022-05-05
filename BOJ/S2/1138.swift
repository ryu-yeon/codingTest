let N = Int(readLine()!)!
var arr = Array(repeating: 0, count: N)
let num = readLine()!.split(separator: " ").map{Int($0)!}
var height: Int = 0

for i in num {
    var x = 0
    height += 1
    var zero = 0
    while zero < i || arr[x] != 0 {
        if arr[x] == 0 {
            zero += 1
        }
        x += 1
    }
    arr[x] = height

}
for i in arr {
    if i == arr.last {
        print(i)
    } else {
        print(i, terminator: " ")
    }
}

