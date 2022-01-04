func solution(_ s:String) -> Bool {
    if s.count != 4 && s.count != 6 {
        return false
    }
    if Int(s) == nil {
        return false
    }
    return true
}
