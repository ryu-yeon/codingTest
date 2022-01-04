func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer: [[Int]] = []
    for i in 0..<arr1.count {
        var result: [Int] = []
        for j in 0..<arr1[i].count {
            result.append(arr1[i][j] + arr2[i][j])
        }
        answer.append(result)
    }
    return answer
}
