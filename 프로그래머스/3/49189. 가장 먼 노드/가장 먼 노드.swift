import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    var graph  = Array(repeating: [Int](), count: n + 1)
    var visited =  Array(repeating: false, count: n+1)
    var distance = Array(repeating: 0, count: n+1)
    
    for i in edge{
        graph[i[0]].append(i[1])
        graph[i[1]].append(i[0])
    }
    
    func bfs(num: Int) {
        var queue: [Int] = [num]
        visited[num] = true
        
        while !queue.isEmpty {
            let current = queue.removeFirst()
            
            for i in graph[current] {
                if !visited[i] {
                    visited[i] = true
                    queue.append(i)
                    distance[i] = distance[current] + 1
                }
            }
        }
    }
    
    
    for i in 1..<n{
        bfs(num: i)
    }
    
    
    let max = distance.max()!
    var count : Int = 0
    
    for i in distance{
        if i == max{
            count += 1
        }
    }
    
    return count
}