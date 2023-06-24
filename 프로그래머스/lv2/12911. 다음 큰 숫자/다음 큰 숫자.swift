import Foundation

func solution(_ n:Int) -> Int
{
    let count = String(n, radix: 2).filter{$0 == "1"}.count
    var temp = n
    var tempCount : Int = 0
    
    repeat{
        temp = temp + 1
        tempCount = String(temp, radix: 2).filter{$0 == "1"}.count
    }while count != tempCount
    
    return temp
}