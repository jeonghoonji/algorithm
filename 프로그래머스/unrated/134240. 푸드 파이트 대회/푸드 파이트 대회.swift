import Foundation

func solution(_ food:[Int]) -> String {
    
    var str : String = ""
    for i in 0..<food.count{
        var count : Int = 0
        if food[i] > 1 {
            count = food[i] / 2
            for _ in 0..<count{
                str += String(i)
            }
        }
    }
    return str + "0" + str.reversed()
}