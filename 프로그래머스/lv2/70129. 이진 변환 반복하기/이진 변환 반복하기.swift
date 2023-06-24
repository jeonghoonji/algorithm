import Foundation

func solution(_ s:String) -> [Int] {
    
    var zeroCount : Int = 0
    var temp = s
    var turn : Int = 0
    
    while temp != "1"{
        var removeZero : String = ""
        turn += 1
        for i in temp {
            if String(i) == "0"{
                zeroCount += 1
                continue
            }
            removeZero += String(i)
        }
        temp = String(removeZero.count, radix: 2)
    }
    
    return [turn,zeroCount]
}
