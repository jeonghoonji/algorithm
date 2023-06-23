import Foundation

func solution(_ order:[String]) -> Int {
    var result : Int = 0
    for i in order{
        if i.contains("americano"){
            result += 4500
            continue
        }else if i.contains("cafelatte"){
            result += 5000            
            continue
        }
        result += 4500
    }
    
    return result
}