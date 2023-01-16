import Foundation

func solution(_ s:String) -> Int {
var answer = 0

var first: Character?
var x = 0
var y = 0

for i in 0..<s.count {
    if first == nil {
        first = s[s.index(s.startIndex, offsetBy: i)]
    }
    if first == s[s.index(s.startIndex, offsetBy: i)] {
        x += 1
    } else {
        y += 1
    }

    if x == y {
        answer += 1
        first = nil
    }
    
}
if first != nil {
    answer += 1
}
    
    return answer
}
