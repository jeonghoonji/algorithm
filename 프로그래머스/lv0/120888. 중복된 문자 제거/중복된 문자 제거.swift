import Foundation

func solution(_ my_string:String) -> String {
    var arr : [String] = []

    for i in my_string{
        if arr.contains(String(i)){
            
        }else{
            arr.append(String(i))
        }
    }
    
    
    return arr.joined()
}