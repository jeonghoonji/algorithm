import Foundation

func solution(_ array:[Int]) -> [Int] {
    var arr : [Int] = []
    arr.append(array.sorted().last!)
    print(array)
    for i in 0..<array.count{
        if arr[0] == array[i]{
            arr.append(i)
        }
    }
    return arr
}