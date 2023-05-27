let input = Int(readLine()!)!
var count : Int = 0

for _ in 0..<input{
    let str = Array(readLine()!.map{String($0)})
    var wordList : [String] = []
    var result : Bool = false
    
    for i in str{
        if !wordList.contains(i){
            wordList.append(i)
        }else if wordList.last != i{
            result = true
        }
        
    }
    count += result ? 0 : 1
}
print(count)
