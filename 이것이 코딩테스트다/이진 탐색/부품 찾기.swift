import Foundation

let N = Int(readLine()!)!
let store = readLine()!.split(separator: " ").map { Int($0)! }
let M = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }

for i in input {
    if store.contains(i) {
        print("yes", terminator: " ")
    } else {
        print("no", terminator: " ")
    }
}

