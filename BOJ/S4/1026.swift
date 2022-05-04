let N = Int(readLine()!)!
var A = readLine()!.split(separator: " ").map {Int($0)!}
var B = readLine()!.split(separator: " ").map {Int($0)!}

A.sort()
B.sort()
var ans: Int = 0

for i in 0..<N {
    ans += A[N - i - 1] * B[i]
}
print(ans)

