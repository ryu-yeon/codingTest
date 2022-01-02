import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    
    var result = 0
    
    for i in left...right {
        if floor(sqrt(Double(i))) == sqrt(Double(i)) {
            result -= i
        } else {
            result += i
        }
    }
    return result
}
