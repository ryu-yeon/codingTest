func solution(_ arr:[Int]) -> [Int] {
    var result = arr
    if result.count == 1 {
        return [-1]
    }
    if let index = result.firstIndex(of: result.min()!) {
       result.remove(at: index) 
    }
    return result
}
