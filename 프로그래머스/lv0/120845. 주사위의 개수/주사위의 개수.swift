import Foundation

func solution(_ box:[Int], _ n:Int) -> Int {
    var a : Int = box[0] / n 
    var b : Int = box[1] / n 
    var c : Int = box[2] / n 
    return a * b * c
}



