import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var arr : [Int] = []
    
    if direction == "left"{
        for i in 1..<numbers.count{
            arr.append(numbers[i])
           
        }
        arr.append(numbers[0])
    }else{
        arr.append(numbers[numbers.count-1])
        for i in 0..<numbers.count-1{
            arr.append(numbers[i])
        }
        
    }
    
    return arr
}
