import Foundation

let N = Int(readLine()!)!

var arr: [(String, Int)] = []

for _ in 1...N {
    let input = readLine()!.split(separator: " ").map{String($0)}
    arr.append((input[0], Int(input[1])!))
}

arr.sort {
    $0.1 < $1.1
}

for i in arr {
    print(i.0, terminator: " ")
}

