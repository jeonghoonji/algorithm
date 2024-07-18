let NK = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NK[0], k = NK[1]

var visited = Array(repeating: false, count: 100001)
var max = 100001

func bfs() -> Int{
    var queue = [(n,0)]
    visited[n] = true

    while !queue.isEmpty{

        let current = queue.removeFirst()
        let position = current.0
        let count = current.1
       
        if position == k{
            return count
        }else{

            if position * 2 < max && !visited[position*2]{
                visited[position*2] = true
                queue.append((position*2,count+1))
            }
            if position + 1 <= k && !visited[position+1]{
                visited[position+1] = true
                queue.append((position+1,count+1))
            }
            if position - 1 >= 0 && !visited[position-1]{
                visited[position-1] = true
                queue.append((position-1,count+1))
            }
            
        }
        
    }
    return -1
}
print(bfs())