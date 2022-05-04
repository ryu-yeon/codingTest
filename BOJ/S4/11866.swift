let input = readLine()!.split(separator: " ")
let people: Int = Int(input[0])!
let N: Int = Int(input[1])!

var arr: [Int] = []
var ans: [Int] = []

for i in 1...people {
    arr.append(i)
}

var n: Int = N - 1

while !arr.isEmpty {
    while arr.count - 1 < n {
        n -= arr.count
    }
    let x = arr.remove(at: n)
    ans.append(x)
    n += N - 1
}

print("<", terminator: "")
for i in ans {
    if i == ans.last {
        print("\(i)>")
    } else {
        print(i, terminator: ", ")
    }
}

