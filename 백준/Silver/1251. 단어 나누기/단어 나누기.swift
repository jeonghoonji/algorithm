let word = readLine()!
var result : [String] = []

for i in 1..<word.count{
    for j in i+1..<word.count{
        let str = String(word[word.index(word.startIndex, offsetBy: 0)..<word.index(word.startIndex, offsetBy: i)].reversed()) + String(word[word.index(word.startIndex, offsetBy: i)..<word.index(word.startIndex, offsetBy: j)].reversed()) + String(word[word.index(word.startIndex, offsetBy: j)..<word.index(word.startIndex, offsetBy: word.count)].reversed())
        result.append(str)
    }
}
print(result.sorted(by: <).first!)