var people: [Int] = []
var sum: Int = 0
for _ in 0...8 {
    let num = Int(readLine()!)!
    people.append(num)
    sum += num
}

people.sort()
func check(people: inout [Int], sum: Int) -> [Int] {
    for i in 0...7 {
        for j in (i+1)...8 {
            if people[i] + people[j] == sum - 100 {
                people.remove(at: i)
                people.remove(at: j - 1)
                return people
            }
        }
    }
    return []
}
let answer: [Int] = check(people: &people, sum: sum)
for x in answer {
    print(x)
}
