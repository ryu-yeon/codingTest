func solution(_ n:Int, _ m:Int) -> [Int] {
    var a = 0
    var b = 0
    var result: [Int] = []
    
    for i in 1...max(n,m) {
        if (n % i == 0) && (m % i == 0)  {
            a = i
        }
    }
    b = min(n,m) / a * max(n,m)
    result.append(a)
    result.append(b)
    return result
}
