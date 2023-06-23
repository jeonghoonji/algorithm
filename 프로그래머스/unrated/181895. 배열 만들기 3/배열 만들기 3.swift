import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {
    var result : [Int] = []
    for i in intervals{
        result.append(contentsOf: arr[i[0]...i[1]])
    }
    return result
}