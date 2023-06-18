import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    
    var max = priorities.max()!
    var queue : [(Int,Int)] = []
    
    var count : Int = 0
    var result : Int = 0

    for (index,number) in priorities.enumerated(){
        queue.append((index,number))
    }
    
    while !queue.isEmpty{
        let current = queue.removeFirst()
        if !(current.1 == max){
            queue.append(current)
            continue
        }else{
            count += 1
            if let temp = queue.max(by: { $0.1 < $1.1 }){
                max = temp.1
            }
        }
        if current.0 == location{
            result = count
            break
        }
        
    }
    
    return result
}