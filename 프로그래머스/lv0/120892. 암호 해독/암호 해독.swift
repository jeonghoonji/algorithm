import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    var count : Int = 0
    var str : String = ""
    for i in cipher{
        count += 1
        if count == code{
            str += String(i)
            count = 0
        }
        
    }
    
    return str
}
