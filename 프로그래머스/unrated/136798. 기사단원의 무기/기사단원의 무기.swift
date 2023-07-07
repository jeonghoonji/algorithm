import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var warriorBag : [Int] = []
    var result : Int = 0
        
    for i in 1...number {
        var count: Int = 0
        let squrt = Int(sqrt(Double(i)))
        
        for j in 1...squrt {
            if i % j == 0 {
                count += 1
                
                if i / j != j {
                    count += 1
                }
            }
        }
        
        warriorBag.append(count)
    }
    
    for i in warriorBag{
        if i > limit{
            result += power
            continue
        }
        result += i
    }
    
    return result
}
