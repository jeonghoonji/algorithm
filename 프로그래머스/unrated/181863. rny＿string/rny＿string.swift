import Foundation

func solution(_ rny_string:String) -> String {
    var result : String = ""
    for i in rny_string{
        if String(i) == "m"{
            result += "rn"
            continue
        }
        result += String(i)
    }
    
    return result
}