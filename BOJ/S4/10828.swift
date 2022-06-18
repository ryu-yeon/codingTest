let N = Int(readLine()!)!

var arr: [Int] = []

for _ in 1...N {
    let input = readLine()!.split(separator: " ").map(){String($0)}
    if input[0] == "push" {
        arr.append(Int(input[1])!)
    } else if input[0] == "top" {
        print(arr.last ?? -1)
    } else if input[0] == "pop" {
        if arr.last != nil {
            print(arr.last!)
            arr.removeLast()
        } else {
            print(-1)
        }
    } else if input[0] == "size" {
        print(arr.count)
    } else if input[0] == "empty" {
        if arr.isEmpty {
            print(1)
        } else {
            print(0)
        }
    }
}
