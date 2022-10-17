import Foundation

func solution(_ sides:[Int]) -> Int {
    var arr : [Int] = sides.sorted()
    if arr[2] < arr[0] + arr[1]{
        return 1
    }
    return 2
}