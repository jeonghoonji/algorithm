import Foundation

func solution(_ s:String) -> Int{
    
    var temp = Array(s)
    var stack : [Character] = []
    
    for i in 0..<temp.count{
        if !stack.isEmpty && stack.last == temp[i]{
            stack.removeLast()
        }else{
            stack.append(temp[i])
        }
    }
    
    return stack.isEmpty ? 1 : 0
}
