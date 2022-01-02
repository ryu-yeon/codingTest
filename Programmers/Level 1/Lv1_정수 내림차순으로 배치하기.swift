func solution(_ n:Int64) -> Int64 {
    var x: [String] = []
    
    for c in String(n) {
        x.append(String(c))
    }
    x.sort()
    x.reverse()
    return Int64(x.joined())!
}
