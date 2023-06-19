import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var temp = arr
    for i in 0..<query.count{
        if i % 2 == 0{
            var cutArr = temp[0...query[i]]
            temp = []
            temp.append(contentsOf:cutArr)
        }else{
            var cutArr = temp[query[i]...]
            temp = []
            temp.append(contentsOf:cutArr)
        }
    }
    return temp
}