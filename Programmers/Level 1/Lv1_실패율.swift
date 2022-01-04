import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var fail = [Int: Float]()
    var player = stages.count

    for i in 1...N {
        let a = stages.filter{$0 == i}.count
        fail[i] = Float(a) / Float(player)
        player -= a
    }

    let result = fail.sorted(by: <).sorted(by: {$0.value > $1.value})

    return result.map{$0.key}
}
