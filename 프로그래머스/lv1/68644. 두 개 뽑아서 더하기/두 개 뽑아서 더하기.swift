import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    
    var tempSet: Set<Int> = []
    
    for i in 0..<numbers.count{
        for j in i+1..<numbers.count{
            tempSet.insert(numbers[i] + numbers[j])        
        } 
    }
    let result : [Int] = tempSet.sorted() 
    
    return result
}