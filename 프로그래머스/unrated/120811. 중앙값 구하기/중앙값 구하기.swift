import Foundation

func solution(_ array:[Int]) -> Int {
    let arr : [Int] = array.sorted()
    var num : Int = 0
    num = arr.count / 2
    return arr[num]
}