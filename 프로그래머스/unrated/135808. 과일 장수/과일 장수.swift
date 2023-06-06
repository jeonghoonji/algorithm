import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    
    var sortedApple = score.sorted(by: >)
    var box : [Int] = []
    var tempBox : [Int] = []
    
    for i in sortedApple{
        if i <= k && tempBox.count < m {
            tempBox.append(i)
        }
        
        if tempBox.count == m{
            box.append( tempBox.min()! * m * 1)
            tempBox.removeAll()
            continue
        }
    }
    
    
    return box.reduce(0,+)
}