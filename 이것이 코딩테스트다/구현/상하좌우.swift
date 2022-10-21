import Foundation

let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{$0}

var x = 1
var y = 1

for i in input {
    
    switch i {
    case "R":
        if x == N {
            continue
        }
        x += 1
    case "L":
        if x == 1 {
            continue
        }
        x -= 1
    case "U":
        if y == 1 {
            continue
        }
        y -= 1
    case "D":
        if y == N {
            continue
        }
        y += 1
    default: break
    }
}

print("\(y) \(x)")

