import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var arr : [Int] = []
    var temp : Int
    for i in 0..<numbers.count{
        temp = (numbers[i])
        arr.append(temp*2)
        
    }
    return arr
}