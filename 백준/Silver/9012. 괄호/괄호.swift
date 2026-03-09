let T = Int(readLine()!)!

for _ in 0..<T{
    let VPS = readLine()!.map{String($0)}
    
    var temp : [String] = []
    
    for i in VPS{
        if i == "("{
            temp.append(i)
        }else{
            if temp.last == "(" && i == ")"{
                temp.removeLast()
                
            }else{
                temp.append(i)
            }
        }
    }
    
    if temp.isEmpty{
        print("YES")
    }else{
        print("NO")
    }
    
}