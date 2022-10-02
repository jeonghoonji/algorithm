import Foundation

func solution(_ array:[Int], _ height:Int) -> Int {
    var result : Int = 0
    for i in array{
        if i > height{
            result += 1
        }
    }
    return result
}