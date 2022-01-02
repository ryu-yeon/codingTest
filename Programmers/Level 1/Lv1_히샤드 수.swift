func solution(_ x:Int) -> Bool {
    var num = x
    var a = 0
    while num != 0 {
        a += (num % 10)
        num /= 10
    }
    return x % a == 0
}
