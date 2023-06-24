import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var result = num_list
    var num1 = num_list[num_list.count-2]
    var num2 = num_list[num_list.count-1]
    
    if num1 < num2{
       result.append(num2 - num1)
    }else{
        result.append(num2*2)
    }
    return result
}