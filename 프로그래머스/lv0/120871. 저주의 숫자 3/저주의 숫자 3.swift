import Foundation

func solution(_ n:Int) -> Int {
    var result : [Int] = []
    var number : Int = 1
        
    func checkThreeNumber(num: Int) -> Bool{
        var bool : Bool = true
        let check = Array(String(num))
        if check.contains("3"){
            bool = false
        }
        return bool
    }
    
    while result.count != n {
        if ( number % 3 != 0 ) &&  checkThreeNumber(num: number){
            result.append(number)
        }
        number += 1
    }

    return result.last!
}