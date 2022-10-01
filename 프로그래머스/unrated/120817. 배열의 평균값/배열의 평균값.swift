import Foundation

func solution(_ numbers:[Int]) -> Double {
    var result : Int = 0
    for i in numbers{
        result = result + i
    }
    return Double(result)/Double(numbers.count)
}