import Foundation

let N = Int(readLine()!)!
for _ in 0..<N {
    let arr = readLine()!.split(separator: " ").map{Double($0)!}
    if arr[0] == arr[3] && arr[1] == arr[4] {
        if arr[2] == arr[5] {
            print(-1)
        } else {
            print(0)
        }
    } else {
        let d = sqrt(pow(arr[0] - arr[3] , 2) + pow(arr[1] - arr[4], 2))
        if d > arr[2] + arr[5] || d < abs(arr[2] - arr[5]) {
            print(0)
        } else if d == arr[2] + arr[5] || d == abs(arr[2] - arr[5]) {
            print(1)
        } else {
            print(2)
        }
    }
}

