import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    let bill = d.sorted()
    var result = 0
    var bg = budget
    for i in bill {
        bg -= i
        if bg < 0 {
            return result
        }
        result += 1
    }
    return result
}
