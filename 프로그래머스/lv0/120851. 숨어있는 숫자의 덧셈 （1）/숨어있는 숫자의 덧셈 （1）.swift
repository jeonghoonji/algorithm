import Foundation

func solution(_ my_string:String) -> Int {
    var findNumber : String = my_string.filter{$0.isNumber}
    var result : Int = 0
    
    for i in findNumber{
        result += Int(String(i))!
    }
    
    return result
}