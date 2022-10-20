import Foundation

func solution(_ n:Int) -> Int {
    
    for i in 1...n{
        if(n == i * i){
            return 1
        }
    }
    return 2
}