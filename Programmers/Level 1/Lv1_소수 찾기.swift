import Foundation

func solution(_ n:Int) -> Int {
    var ans = 1
    var isPrime = true

    for i in 2...n {
      isPrime = true

      for j in 2...Int((sqrt(Double(i))))+1 {
        if i % j == 0 {
          isPrime = false
          break
        }
      }
      ans = isPrime ? ans + 1 : ans
    }
    return ans
}
