
let N = Int(readLine()!)!
var num : [Int] = []
var result : [Int] = []

for _ in 0..<N{
    let input = Int(readLine()!)!
    num.append(input)
}
num.sort()

for i in num{
    var count: Int = 0
    for j in i..<i+5{
        if num.contains(j){
            continue
        }
        count += 1
    }
    result.append(count)
}

print(result.min()!)