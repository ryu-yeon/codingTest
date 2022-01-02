func solution(_ phone_number:String) -> String {
    let lan = phone_number.count
    var ans = Array(repeating: "*", count: lan-4)

    for i in (-4)...(-1) {
        ans.append(String(phone_number[phone_number.index(phone_number.endIndex, offsetBy: i)]))
    }
    return ans.joined()
}
