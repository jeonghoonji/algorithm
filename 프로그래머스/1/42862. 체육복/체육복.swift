import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    var lostArr = Array(Set(lost).subtracting(reserve)).sorted()
    var reserveArr = Array(Set(reserve).subtracting(lost)).sorted()
    
    var result = n - lostArr.count
    
    while !reserveArr.isEmpty{
        var current = reserveArr.removeFirst()
        
        for i in 0..<lostArr.count{
            if lostArr[i] == current - 1 || lostArr[i] == current + 1 {
                result += 1
                lostArr[i] = -9
                
                break
            }
        }
        
    }
    return result
   
}

