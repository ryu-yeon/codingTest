func solution(_ n:Int) -> String {
    var arr: [String] = []
    for i in 0..<n {
        if i % 2 == 0 {
            arr.append("수")
        } else {
            arr.append("박")
        }
    }
    return arr.joined()
}
