import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var total = brown + yellow
    
    var width : Int = 0
    var height : Int = 0
    
    for i in 1...total{
        if total % i == 0 {
            width = i
            height = total / i
            if i >= height && (i-2) * (height-2) == yellow {
                break
            }else{
                continue
            }
        }
    }
    
    return [width,height]
}