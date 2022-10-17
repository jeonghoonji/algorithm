import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    var element : Int = n / slice
    
    while(n > slice * element ){
        element += 1
    }
    return element
    
}