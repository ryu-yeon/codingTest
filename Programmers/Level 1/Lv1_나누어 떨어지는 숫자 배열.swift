func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result: [Int] = []
    for i in arr {
        if i % divisor == 0 {
            result.append(i)
        }
    }
    return result.count != 0 ? result.sorted() : [-1]
}
