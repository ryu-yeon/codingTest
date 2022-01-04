import Foundation

func solution(_ numbers:[Int]) -> Int {
    var ans = 0
    for i in 0..<10 {
        if !numbers.contains(i) {
            ans += i
        }
    }
    
    return ans
}
