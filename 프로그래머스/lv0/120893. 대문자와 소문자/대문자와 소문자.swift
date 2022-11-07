import Foundation

func solution(_ my_string:String) -> String {
    var str : String = ""
    
    for i in my_string{
        if i.isLowercase == true{
            str += String(i.uppercased())
        }else{
            i.lowercased()
            str += String(i.lowercased())
        }
    }
    return str
}

