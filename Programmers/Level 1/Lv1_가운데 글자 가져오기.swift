func solution(_ s:String) -> String {
    var arr: [String] = []

    for i in s {
        arr.append(String(i))
    }
    while arr.count > 2 {
        arr.removeFirst()
        arr.removeLast()
    }
    return arr.joined()
}
