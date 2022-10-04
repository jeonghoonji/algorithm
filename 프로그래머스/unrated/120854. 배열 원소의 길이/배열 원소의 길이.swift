import Foundation

func solution(_ strlist:[String]) -> [Int] {
    var arr : [Int] = []
    for i in 0..<strlist.count{
        arr.append( strlist[i].count)
    }
    return arr
}