if let T = Int(readLine()!){
    for _ in 0..<T{
        
        let n = readLine()!.split(separator: " ").map { Int($0)! }
        let importance = readLine()!.split(separator: " ").map { Int($0)! }
        print(solve(n: n, importance: importance))
    }
}

func solve(n: [Int], importance: [Int]) -> Int{

    var queue: [(Int,Int)] = []
    
    for (index, value) in importance.enumerated(){
        queue.append((index,value))
    }
    
    var count: Int = 0
    
    while !queue.isEmpty{
        let checking = queue.removeFirst()
        if let max = queue.max(by: { $0.1 < $1.1}){
            if checking.1 < max.1{
                queue.append(checking)
            }else{
                count += 1
                if checking.0 == n[1]{
                    break
                }
            }
        }else{
            count += 1
            break
        }
    }
    return count
}