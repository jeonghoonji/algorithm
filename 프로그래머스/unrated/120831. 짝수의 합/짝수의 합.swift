import Foundation

func solution(_ n:Int) -> Int {
    var result : Int = 0
    for index in 1...n{
        if index % 2 == 0 {
            result += index
        }
    }
    return result
}