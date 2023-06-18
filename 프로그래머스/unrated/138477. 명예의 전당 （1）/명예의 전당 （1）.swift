import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var arr : [[Int]] = []
    var result : [Int] = []
    
    for i in 0..<score.count{
        var temp : [Int] = []

        if i < k {
            for j in 0...i{
                temp.append(score[j])
            }
        }else{
            temp = arr[i-1]
            temp.append(score[i])
            temp = temp.sorted()
            temp.removeFirst()
        }
        arr.append(temp)
    }

    for i in arr{
        var temp = i.sorted()
        result.append(temp.first!)
    }

    return result
}