import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var result : [Int] = []
    
    for i in photo{
        var sum : Int = 0
        for j in i{
            for (name,yearning) in zip(name,yearning){
                if j == name{
                    sum += yearning
                }                
            }
        }
        result.append(sum)
    }

    
    return result
}