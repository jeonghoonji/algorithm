let FSGUD = readLine()!.split(separator: " ").map{ Int($0)! }
let f = FSGUD[0], s = FSGUD[1], g = FSGUD[2], u = FSGUD[3], d = FSGUD[4]

var visited = Array(repeating: false, count: f + 1)

print(bfs())

func bfs() -> String{
    var queue = [(s,0)]
    visited[s] = true
    
    while !queue.isEmpty{
        let current = queue.removeFirst()

        if current.0 == g{
            return String(current.1)
        }
        
        if current.0 + u <= f && !visited[current.0 + u]{
            visited[current.0 + u] = true
            queue.append(((current.0 + u),current.1+1))
        }
        if current.0 - d > 0 && !visited[current.0 - d]{
            visited[current.0 - d] = true
            queue.append(((current.0 - d),current.1+1))
        }
    }
    return "use the stairs"
}