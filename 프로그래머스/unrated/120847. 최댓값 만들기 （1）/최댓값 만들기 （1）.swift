import Foundation

func solution(_ numbers:[Int]) -> Int {
    let arr : [Int] =  numbers.sorted()
    let num1 : Int = numbers.count - 1
    let num2 : Int = numbers.count - 2
    return arr[num1] * arr[num2] 
    
}

