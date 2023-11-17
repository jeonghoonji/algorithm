import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var result: Int = 0
    
    var sortA = A
    var sortB = B
    sortA.sort()
    sortB.sort(by:>)
    for i in 0..<A.count{
        result += sortA[i] * sortB[i]
    }
    
    return result
}