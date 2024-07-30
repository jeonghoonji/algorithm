
let NMR = readLine()!.split(separator: " ").map { Int($0)! }
let n = NMR[0], m = NMR[1], r = NMR[2]

var graph = Array(repeating: [Int](), count: n + 1)
var visited = Array(repeating: -1, count: n + 1)


for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let u = input[0], v = input[1]
    graph[u].append(v)
    graph[v].append(u)
}

for i in 1...n {
    graph[i].sort(by: <)
}


var count: Int = 0

dfs(node: r, depth: 0)

func dfs(node: Int,depth: Int) {
    visited[node] = depth
    
    for i in graph[node] {
        if visited[i] == -1 {
            dfs(node: i,depth: depth+1)
        }
    }
}

for i in 1...n {
    print(visited[i])
}