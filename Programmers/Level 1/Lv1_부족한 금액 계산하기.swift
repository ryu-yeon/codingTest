import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer = Int64(money)
    for i in 1...count {
        answer -= Int64(price * i)
    }
    if answer < 0 {
        return answer * -1
    }
    return 0
}
