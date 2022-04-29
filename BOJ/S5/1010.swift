//이항계수 알고리즘 - 파스칼의 삼각

let T = Int(readLine()!)!
var cache = Array(repeating: Array(repeating: -1, count: 30), count: 30)
for _ in 1...T {
    let input = readLine()!.split(separator:" ").map{Int($0)!}
    let N = input[0], M = input[1]
    print(bino(M, N))
}

func bino(_ m: Int, _ n: Int) -> Int {
    if cache[m][n] != -1{
        return cache[m][n]
    }
    if n == 0 || n == m {
        return 1
    } else {
        cache[m][n] = bino(m - 1, n) + bino(m - 1, n - 1)
    }
    return cache[m][n]
}

