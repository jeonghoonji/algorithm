import Foundation

func solution(_ age:Int) -> String {
    var str : String = ""
    for i in String(age){
        switch(i){
        case "0":
            str += "a"
        case "1":
            str += "b"
        case "2":
            str += "c"
        case "3":
            str += "d"
        case "4":
            str += "e"
        case "5":
            str += "f"
        case "6":
            str += "g"
        case "7":
            str += "h"
        case "8":
            str += "i"
        case "9":
            str += "j"
        default:
            return ""
            
        }
    }

    return str
}


