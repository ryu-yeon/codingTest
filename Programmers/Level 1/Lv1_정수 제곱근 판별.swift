import Foundation

func solution(_ n:Int64) -> Int64 {
    
    let n1 = Int64(sqrt(Double(n)))
    return n1 * n1 == n ? (n1+1) * (n1+1) : -1
}
