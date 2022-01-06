import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    
    var result = 0
    var x = 0
    
    x = lottos.filter{$0==0}.count
    result = win_nums.filter {lottos.contains($0)}.count
    
    return [min(7-result-x, 6), min(7-result, 6)]
}

