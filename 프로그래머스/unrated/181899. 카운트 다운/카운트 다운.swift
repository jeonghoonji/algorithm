import Foundation

func solution(_ start:Int, _ end:Int) -> [Int] {
    var result : [Int] = []
    for i in stride(from:start, through:end, by:-1){
        result.append(i)
    }
    
    return result
}