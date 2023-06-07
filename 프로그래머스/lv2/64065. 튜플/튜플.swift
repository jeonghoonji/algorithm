import Foundation

func solution(_ s:String) -> [Int] {
    
    var makeArray : [[Int]] = []
    
    var sArray = Array(s)
    var tempArray : [Int] = []
    var tempStr : String = ""
    var openClose : Bool = false
    
    var result : [Int] = []
    
    for i in 1..<sArray.count - 1{
        
        if "{" == sArray[i] {
            openClose = true
            continue
        }
        
        if openClose{
            if Int(String(sArray[i])) != nil{
                tempStr += String(sArray[i])
                continue
            }
            if "," == sArray[i] || "}" == sArray[i]{
                tempArray.append(Int(tempStr)!)
                tempStr = ""
            }
            
        }
        if "}" == sArray[i] {
            openClose = false
            makeArray.append(tempArray)
            tempArray = []
        }
        
    }
    
    makeArray = makeArray.sorted(by: { $0.count < $1.count })
    
    for i in makeArray{
        for j in i{
            if result.contains(j){
                continue
            }else{
                result.append(j)
            }
            
        }
    }
    
    
    return result
}