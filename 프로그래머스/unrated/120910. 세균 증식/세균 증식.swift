import Foundation

func solution(_ n:Int, _ t:Int) -> Int {
    var result : Int 
    result = n
    for i in 1...t{
        result = result * 2
    }
    return result
}

