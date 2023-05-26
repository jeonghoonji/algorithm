
let input = Array(readLine()!.map{String($0).lowercased()})

if input.count == 1{
    print(input[0].uppercased())
}else{
    print(solve())
}

func solve() -> String{
    var wordSet = Set<String>()
    var wordDictionary : [String:Int] = [:]

    for i in input{
        wordSet.insert(i)
    }

    for i in input{
        if wordSet.contains(i){
            if let count = wordDictionary[i]{
                wordDictionary[i] = count + 1
            } else {
                wordDictionary[i] = 1
            }
        }
    }
    let result = wordDictionary.sorted(by: { $0.value > $1.value})

    if result[0].value > result[1].value{
        return result[0].key.uppercased()
    }else{
        return "?"
    }
}