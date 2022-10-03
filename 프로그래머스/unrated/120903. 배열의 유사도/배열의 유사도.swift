import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    var result : Int = 0
    for i in 0..<s1.count{
        for j in 0..<s2.count{
            if s1[i] == s2[j] {
                result += 1
            }
        }
    }
    return result
}