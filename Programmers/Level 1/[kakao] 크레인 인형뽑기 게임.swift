import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    let len = board.count
    var newboard: [[Int]] = []
    var pot: [Int] = []
    var result = 0

    for i in 0..<len {
        var arr: [Int] = []
        for j in 0..<len {
            arr.append(board[j][i])
        }
        newboard.append(arr)
    }

    for x in moves {
        for i in 0..<len {
            if newboard[x-1][i] != 0 {
                if pot.count == 0 || pot[pot.count-1] != newboard[x-1][i] {
                    pot.append(newboard[x-1][i])
                    newboard[x-1][i] = 0

                } else if pot.count > 0 && pot[pot.count-1] == newboard[x-1][i] {
                    pot.remove(at: pot.count-1)
                    newboard[x-1][i] = 0
                    result += 2
                }
                break
            }
        }
    }
    return result
}
