let N = Int(readLine()!)!
let maze = readLine()!.split(separator: " ").map{ Int($0)! }

var visited = Array(repeating: false, count: N)

if N == 1{
    print(0)
}else{
    print(bfs())
}


func bfs() -> Int {
    // idx,count
    var queue = [(0,0)]
    visited[0] = true
    
    while !queue.isEmpty{
        let current = queue.removeFirst()
        let idx = current.0
        let count = current.1

        for i in 0...maze[idx]{
            if N-1 == i+idx{
                return count + 1    
            }
            
            if !visited[i+idx] && i+idx < N{
                if maze[i+idx] == 0{
                    continue
                }else{
                    visited[i+idx] = true
                    queue.append((i+idx,count+1))
                }
            }
            
        }
    }
    return -1
    
}