let N = Int(readLine()!)!

var arr : [Int] = []

for _ in 0..<N{
    arr.append(Int(readLine()!)!)
    
}
let result = arr.sorted(by: <)

for i in result{
    print(i)
}