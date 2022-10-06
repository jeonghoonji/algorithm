import Foundation

func solution(_ n:Int) -> Int
{
    var arr : [Int] = []
    
    for i in String(n){
        arr.append(Int(String(i))!)    
    }
    return arr.reduce(0){$0 + $1}
    
}

    
    