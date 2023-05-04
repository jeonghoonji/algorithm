let N = Int(readLine()!)!
var array_N = readLine()!.split(separator: " ").map { Int(String($0))! }
let M = Int(readLine()!)!
var array_M = readLine()!.split(separator: " ").map { Int(String($0))! }
var result : [Int] = []
var counts : [Int : Int] = [:]

array_N.sort()

for i in array_N{
    if counts.keys.contains(i){
        counts[i]! += 1
    }else{
        counts[i] = 1
    }
    
}

for i in array_M{
    if counts.keys.contains(i){
        result.append(counts[i]!)
    }else{
        result.append(0)
    }
}

for i in result{
    print(i)
}