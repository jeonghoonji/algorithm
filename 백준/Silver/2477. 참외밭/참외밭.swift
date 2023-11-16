let K = Int(readLine()!)!

var arr: [(Int,Int)] = []
var count: [Int:Int] = [:]
var max: Int = 1
var min: Int = 1

for _ in 0..<6{
    let input = readLine()!.split(separator: " ").map{ Int(String($0))!}
    arr.append((input[0],input[1]))
    count[input[0],default: 0] += 1
    
}

for i in 0..<arr.count{
    
    if count[arr[i].0]! == 1{
        max *= arr[i].1
    }
    
    if arr[i].0 == arr[(i+2) % 6].0 {
        min *= arr[(i+1) % 6].1
    }
}

print((max-min) * K)