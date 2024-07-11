let N = Int(readLine()!)!

var graph = Array(repeating: [Int]() , count: N+1)
var visited = Array(repeating: false, count: N+1)
var result = Array(repeating: 0, count: N+1)

for _ in 0..<N-1{
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let u = input[0], v = input[1]
    graph[u].append(v)
    graph[v].append(u)
}

bfs()

func bfs(){
    var queue = [1]
    visited[1] = true
    while !queue.isEmpty{
        let current = queue.removeFirst()

        for i in graph[current]{
            if !visited[i]{
                visited[i] = true
                queue.append(i)
                result[i] = current
            }
        }
    }
}
for i in 2..<result.count{
    print(result[i])
}