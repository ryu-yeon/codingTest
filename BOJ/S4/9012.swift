let N = Int(readLine()!)!

for _ in 1...N {
    let input = readLine()!.map{$0}
    var sum = 0
    for i in input {
        if i == "(" {
            sum += 1
        } else {
            sum -= 1
        }
        if sum < 0 {
            break
        }
    }
    sum == 0 ? print("YES") : print("NO")
}
