import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    
    
    var result : Int = 0
    for i in i...j{
        for j in String(i){
            if Int(String(j))! == k {
                result += 1
            }
        }
    }
    return result
    
}

    