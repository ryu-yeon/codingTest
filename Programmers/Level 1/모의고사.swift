import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let n = answers.count

    var answer1 : Array<Int> = Array()
    var answer2 : Array<Int> = Array()
    var answer3 : Array<Int> = Array()

    for i in 0..<n {
        answer1.append(i%5+1)
    }
    for j in 0..<n {
        if j%2 == 0 {
            answer2.append(2)
        }
        else {
            switch j/2%4 {
                case 0:
                    answer2.append(1)
                case 1:
                    answer2.append(3)
                case 2:
                    answer2.append(4)
                default:
                    answer2.append(5)
            }
        }
    }
    for k in 0..<n {
        switch k/2%5 {
            case 0 :
                answer3.append(3)
            case 1:
                answer3.append(1)
            case 2:
                answer3.append(2)
            case 3:
                answer3.append(4)
            default:
                answer3.append(5)
        }
    }
    var ans = Array(repeating: 0, count: 3)

    for x in 0..<n {
        if answers[x] == answer1[x] {
            ans[0] += 1
        }
        if answers[x] == answer2[x] {
            ans[1] += 1
        }
        if answers[x] == answer3[x] {
            ans[2] += 1
        }
    }

    var a = ans
    var max = a.sorted()[2]
    ans.removeAll()

    for i in 0..<3 {
        if a[i] == max {
            ans.append(i+1)
        }
    }
    return ans
}
