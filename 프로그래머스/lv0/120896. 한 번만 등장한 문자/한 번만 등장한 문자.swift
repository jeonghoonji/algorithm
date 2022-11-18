import Foundation

func solution(_ s:String) -> String {
    var arr : [String] = []
    var count : Int = 0
    var str : String = ""
    
    for i in s.sorted(){
        arr.append(String(i))  
    }
    
    for j in arr{
        for k in arr{
            if j == k{
                count += 1
            }
        }
        if count == 1 {
            str += j
        }
        count = 0
    }
  
    
    return str
}




