import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var remainCola : Int = 0
    var returnCola = n
    var result : Int = 0
    
    while !(returnCola < a) {
        result += (returnCola / a ) * b
        remainCola = returnCola % a
        returnCola = (returnCola / a ) * b + remainCola
    }
    
    return result
}