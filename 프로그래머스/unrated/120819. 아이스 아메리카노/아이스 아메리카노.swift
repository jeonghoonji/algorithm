import Foundation

func solution(_ money:Int) -> [Int] {
    var arr : [Int] = []
    
    arr.append(money / 5500)
    arr.append(money % 5500)
    
  
    
    
    return arr
}