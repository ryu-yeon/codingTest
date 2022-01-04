func solution(_ s:String, _ n:Int) -> String {
    let a = Array("abcdefghijklmnopqrstuvwxyz")
    let b = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")

    var arr = Array(s)

    for i in 0..<arr.count {
        if a.contains(arr[i]) {
            let index = (a.firstIndex(of: arr[i])! + n) % 26
            arr[i] = a[index]
        }
        else if b.contains(arr[i]) {
            let index = (b.firstIndex(of: arr[i])! + n) % 26
            arr[i] = b[index]
        }
    }
    return String(arr)
}
