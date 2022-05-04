let input = readLine()!.split(separator: " ").map {Int($0)!}
let people = input[0], N = input[1]

var arr = (1...people).map{$0}
var ans: [Int] = []

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
