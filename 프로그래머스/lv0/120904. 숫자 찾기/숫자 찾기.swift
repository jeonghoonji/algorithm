import Foundation

func solution(_ num:Int, _ k:Int) -> Int {   
    var result : Int = 0

    for i in String(num){
        if String(i) == String(k){
            result += 1
            return result
        }
        result += 1
    }
    
    return -1
}

    