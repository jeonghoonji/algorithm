import Foundation

func solution(_ s:String) -> Int {
    var arr : [String] = s.components(separatedBy: [" "])
    var temp : Int = 0
    var sum : Int = 0
    for i in arr{
        if i == "Z"{
            sum -= temp
            continue
        }
        temp = Int(i)!
        sum += Int(i)!
    }
    
    return sum
}