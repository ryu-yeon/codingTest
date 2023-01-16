import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var answer: [Int] = []

    for i in 0..<score.count {
        let arr = score.prefix(i+1).sorted(by: <)
        
        if i < k {
            answer.append(arr.first!)
        } else {
            answer.append(arr[arr.index(arr.startIndex, offsetBy: i - k + 1)])
        }
    }
    return answer
}
