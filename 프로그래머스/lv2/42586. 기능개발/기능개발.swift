import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var tempQueue = progresses
    var tempSpeed = speeds
    var result : [Int] = []
    
    while !tempQueue.isEmpty {
        var count : Int = 0
        for i in 0..<tempQueue.count{
            tempQueue[i] = tempQueue[i] + tempSpeed[i]
        }
        if tempQueue.first! >= 100{
            for _ in tempQueue{
                if tempQueue.first! >= 100{
                    tempQueue.removeFirst()
                    tempSpeed.removeFirst()
                    count += 1
                }
            }
            result.append(count)
        }
        
        
    }
       
    return result
}
