let N = Int(readLine()!)!

var lineUp : [String] = []
var result : String = ""

for _ in 0..<N{
    let input = Array(readLine()!)[0]
    lineUp.append(String(input))
}
let filterLineUp = Dictionary(grouping: lineUp, by: {$0}).mapValues{$0.count}.filter{ $0.value >= 5 }


if filterLineUp.isEmpty{
    print("PREDAJA")
}else{
    for i in filterLineUp.sorted(by: {$0.key < $1.key}){
        result += i.key
    }
    print(result)
}