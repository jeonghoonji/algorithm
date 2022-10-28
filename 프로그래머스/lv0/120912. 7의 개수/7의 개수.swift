import Foundation

func solution(_ array:[Int]) -> Int {
    var count : Int = 0
    for i in array{
        for j in String(i){
            if j == "7"{
                count += 1
            }
        }
    }
    
    return  count
}

  