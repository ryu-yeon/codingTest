import Foundation
    
func isPrime (x : Int) -> Int {
    for a in 2...Int(sqrt(Double(x))) {
        if x % a == 0 {
            return 0
        }
    }
    return 1
}

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    let n = nums.count
    
    for i in 0..<(n-2) {
        for j in (i+1)..<(n-1) {
            for k in (j+1)..<n {
                var x  = nums[i] + nums[j] + nums[k]
            answer += isPrime(x: x)
            }
        }
    }
    return answer
}
