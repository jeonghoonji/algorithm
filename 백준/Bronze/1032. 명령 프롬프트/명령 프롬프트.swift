let N = Int(readLine()!)!

var command : [String] = []
if N <= 50{
    if N == 1{
        print(readLine()!)
    }else{
        print(solve())
    }
}

func solve() -> String{
    for _ in 0..<N{
        let str = readLine()!
        command.append(str)
    }
    var tempArray : [String] = []
    for i in command[0]{
        tempArray.append(String(i))
    }
            
    for i in command{
        for (j, char) in i.enumerated() {
            if String(char) == tempArray[j]{
                tempArray[j] = String(char)
            }else{
                tempArray[j] = "?"
            }
        }
    }
    
    return tempArray.joined()
}