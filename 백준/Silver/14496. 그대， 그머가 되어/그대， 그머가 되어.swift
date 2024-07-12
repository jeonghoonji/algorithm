let AB = readLine()!.split(separator: " ").map{ Int($0)! }
let a = AB[0], b = AB[1]
let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NM[0], m = NM[1]

var graph = Array(repeating: [Int](), count: n+1)
var visited = Array(repeating: false, count: n+1)
var depth = Array(repeating: 0, count: n+1)

for _ in 0..<m{
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let u = input[0], v = input[1]
    graph[u].append(v)
    graph[v].append(u)
}

if a==b{
    print(0)
}else{
    print(bfs())
}

func bfs() -> Int{
    var queue = [a]
    while !queue.isEmpty{
        let current = queue.removeFirst()
        for i in graph[current]{
            if !visited[i]{
                visited[i] = true
                queue.append(i)
                depth[i] = depth[current] + 1
            }
        }
        
    }
    if depth[b] == 0{
        return -1
    }
    return depth[b]
}