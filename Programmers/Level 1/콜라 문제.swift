import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var answer = 0
    var N = n
    var x = 0
    while N >= a {
        answer += (N / a) * b
        x = N / a * b
        N = (N % a + x)
    }
    return answer
}
