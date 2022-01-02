import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var ans = 0
    var student : Array<Int> = Array(repeating: 1, count: n)

    for l in lost {
        student[l-1] = 0
    }

    for r in reserve {
        student[r-1] += 1
    }

    for i in 0..<n {
        if student[i] == 0 {
            if i>0 && student[i-1] > 1 {
                student[i] += 1
                student[i-1] -= 1
            }
            else if i<n-1 && student[i+1] > 1 {
                student[i] += 1
                student[i+1] -= 1
            }
        }
    }
    for j in 0..<n {
        if student[j] >= 1 {
            ans += 1
        }
    }
    return ans
}
