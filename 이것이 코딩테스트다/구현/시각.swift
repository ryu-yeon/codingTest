import Foundation

let N = Int(readLine()!)!

/*
00 00 03
00 00 13
00 00 23
00 00 30 ~ 39
00 00 43
00 00 53
00 03 00 ~ 59
00 13 00 ~ 59
00 23
00 30 ~39
00 43
00 53
*/

var answer = 0
for i in 0...N {
    if i % 3 != 0 || i == 0 {
        answer += (15 * 45 + 60 * 15)
    } else {
        answer += (60 * 60)
    }
}

print(answer)
