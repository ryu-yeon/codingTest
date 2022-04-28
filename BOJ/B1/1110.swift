let N = Int(readLine()!)!
var num = N
var time: Int = 0
while true {
    time += 1
    let sum = num % 10 + num / 10
    let newNum = (num % 10) * 10 + sum % 10
    if newNum == N {
        print(time)
        break
    }
    num = newNum
}
