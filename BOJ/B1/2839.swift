var N = Int(readLine()!)!
var result = 0

while N >= 0 {
    if N % 5 == 0 {
        result += N / 5
        break
    }
    N -= 3
    result += 1
}
if N < 0 {
    print(-1)
} else {
    print(result)
}

