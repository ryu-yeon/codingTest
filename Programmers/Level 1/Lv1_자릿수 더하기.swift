import Foundation

func solution(_ n:Int) -> Int
{
    var result: [Int] = []
    for c in String(n) {
        result.append(Int(String(c))!)
    }
    return result.reduce(0,+)
}
