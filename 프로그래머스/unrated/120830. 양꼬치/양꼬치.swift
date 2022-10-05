import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    var service : Int = 0
    service = n / 10
    return Int(n * 12000 + k * 2000 - service * 2000)
}