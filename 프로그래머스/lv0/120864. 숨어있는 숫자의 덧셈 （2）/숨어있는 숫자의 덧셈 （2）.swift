
import Foundation

func solution(_ my_string:String) -> Int {
    var num : Int = 0
    var arr : [String] = []
    var str : String = my_string


    for i in Array(my_string){
        if !i.isNumber{
            arr.append(String(i))
        }
    }
    
    for j in arr{
        str = str.replacingOccurrences( of : j , with : " ")
    }
    
    arr.removeAll()
    arr = str.components(separatedBy:" ")
    
    for k in arr{
        if k.count >= 1{
            num += Int(k)!
        }
       
    }
    return num
}


