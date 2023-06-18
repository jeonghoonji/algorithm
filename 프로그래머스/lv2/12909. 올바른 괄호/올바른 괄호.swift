import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    var stack : [String] = []
    for i in s{
        
        if stack.isEmpty && i == ")"{
            stack.append(String(i))
            continue
        }
        
        if i == "("{
            stack.append(String(i))
            continue
        }else{
            if !stack.isEmpty{
                stack.removeLast()
            }
        }
        
    }
    
    ans = stack.isEmpty ? true : false
    return ans
}