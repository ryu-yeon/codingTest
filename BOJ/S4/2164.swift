let N = Int(readLine()!)!

if N == 1 {
    print(1)
} else {
    var arr = (1...N).map{$0}
    var head = 0
    
    for _ in 1...N-1 {
        arr[head] = 0
        arr.append(arr[head + 1])
        arr[head + 1] = 0
        head += 2
    }
    print(arr.last!)
}

