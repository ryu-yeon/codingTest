let N = Int(readLine()!)!

for _ in 0..<N {
    let input = Int(readLine()!)!

    if input == 0 {
        print("1 0")
    } else if input == 1 {
        print("0 1")
    } else {
        var arr: [Int] = [0, 1]
        for i in 2...input {
            arr.append(arr[i - 2] + arr[i - 1])
        }
        print("\(arr[input - 1]) \(arr[input])")
    }
}

