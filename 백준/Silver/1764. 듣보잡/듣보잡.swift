let NM = readLine()!.split(separator: " ").map{Int($0)!}

var n = NM[0]
var m = NM[1]
var set = Set<String>()

for _ in 0..<n{
    let str = String(readLine()!)
    set.insert(str)
}
var result : [String] = []

for _ in 0..<m{
    let str = String(readLine()!)
    if set.contains(str){
        result.append(str)
    }
}
result.sort()
print(result.count)
for i in result{
    print(i)
}
