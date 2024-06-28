let S = readLine()!.map{ String($0)}

var result: [String] = []
var temp: String = ""
var tag: Bool = false

for i in 0..<S.count{
    if S[i] == "<"{
        if !temp.isEmpty{
            result.append(String(temp.reversed()))
            temp = ""
        }
        tag.toggle()
        temp += "<"
        continue
    }else if S[i] == ">"{
        temp += ">"
        tag.toggle()
        result.append(temp)
        temp = ""
        continue
    }
    
    if tag{
        temp += S[i]
        continue
    }else if S[i] == " "{
        result.append(String(temp.reversed()) + " ")
        temp = ""
    }
    else{
        temp += S[i]
    }
    

}
result.append(String(temp.reversed()))
print(result.joined())