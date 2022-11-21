import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var result : [String] = []
    var arr : [String] = []
    var max : Int = 0
    
    for i in Array(my_str){
        arr.append(String(i))    
    }

    for i in stride(from:0,to:my_str.count,by:n){
        max = i + n
        if max > my_str.count{
            max = my_str.count
        }
        result.append(arr[i..<max].joined())
    }
    
    
 
    return result
}


        
