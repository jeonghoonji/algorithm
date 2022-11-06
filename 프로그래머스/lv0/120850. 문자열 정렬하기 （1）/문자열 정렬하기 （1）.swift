import Foundation

func solution(_ my_string:String) -> [Int] {
    
    let findNumber : String = my_string.filter{$0.isNumber}
    
    let result = findNumber.map{ Int(String($0))!}
    return result.sorted()
}
    
