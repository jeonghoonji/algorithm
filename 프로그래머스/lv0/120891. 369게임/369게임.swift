import Foundation

func solution(_ order:Int) -> Int {
    var count : Int = 0
    for i in String(order) {
        if (i == "3") || (i == "6") || (i == "9"){
            count += 1
        }
        
    }
    return count
}