import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var count : Int = 0  
    var paint = 0
    
    for i in section{
        if paint < i {
            paint = i + m - 1
            count += 1
        }
    }
    return count
    
}
 

    