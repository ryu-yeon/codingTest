func solution(_ n:Int64) -> [Int] {
    var num: Int64 = n
    var result: [Int] = []

    while num != 0 {
        result.append(Int(num % Int64(10)))
        num /= 10
    }
    return result
}
