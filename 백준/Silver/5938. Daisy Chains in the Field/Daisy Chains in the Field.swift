
let NM = readLine()!.split(separator: " ").map { Int($0)! }
let N = NM[0], M = NM[1]
var graph = [[Int]](repeating: [], count: N + 1)
var visited = [Bool](repeating: false, count: N + 1)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let u = input[0], v = input[1]
    graph[u].append(v)
    graph[v].append(u)
}

func bfs(startNode: Int) {
    var queue = [startNode]
    visited[startNode] = true
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        for neighbor in graph[current] {
            if !visited[neighbor] {
                queue.append(neighbor)
                visited[neighbor] = true
            }
        }
    }
}

bfs(startNode: 1)

var disconnectedNodes = [Int]()
for i in 1...N {
    if !visited[i] {
        disconnectedNodes.append(i)
    }
}

if disconnectedNodes.isEmpty {
    print(0)
} else {
    for node in disconnectedNodes {
        print(node)
    }
}