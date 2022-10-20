import Foundation

func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    // 첫 번째 방법
    // var arr : [Int] = []
    // for i in 0..<numlist.count{
    //     if (numlist[i] % n) == 0{
    //         arr.append(numlist[i])
    //     }
    // }
    // return arr
    //두 번째 방법
    return numlist.filter{$0%n == 0 }
}
