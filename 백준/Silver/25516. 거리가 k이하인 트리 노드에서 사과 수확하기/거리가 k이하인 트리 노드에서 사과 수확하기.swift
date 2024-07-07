let NK = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NK[0], k = NK[1]

var graph = Array(repeating: [Int](), count: n)
var visited = Array(repeating: false, count: n)
var depth = Array(repeating: 0, count: n)
var result : Int = 0
var index : Int = 0

var queue = [0]
visited[0] = true

for _ in 0..<n-1{
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let u = input[0], v = input[1]
    graph[u].append(v)
    graph[v].append(u)
}
let apple = readLine()!.split(separator: " ").map{ Int($0)! }

func bfs(){
    while queue.count > index{
        let current = queue[index]
        for i in graph[current]{
            if !visited[i]{
                visited[i] = true
                queue.append(i)
                depth[i] = depth[current] + 1
            }
        }
        index += 1
    }
}

bfs()

for i in 0..<depth.count{
    if depth[i] <= k{
        result += apple[i]
    }
}

print(result)