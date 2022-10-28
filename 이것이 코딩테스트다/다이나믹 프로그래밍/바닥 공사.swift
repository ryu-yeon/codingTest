import Foundation

let x = Int(readLine()!)!

var dic: [Int: Int] = [:]

dic[0] = 0
dic[1] = 1
dic[2] = 3

for i in 3...x {
    dic[i] = dic[i - 1]! + 2 * dic[i - 2]!
}

print(dic[x]! % 796796)
