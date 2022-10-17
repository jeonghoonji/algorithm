import Foundation

func solution(_ n:Int) -> Int {
    var element : Int = n / 7
    
    while(n > 7 * element ){
        element += 1
    }
    return element
}

