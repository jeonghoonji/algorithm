let NMR = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NMR[0], m = NMR[1], r = NMR[2]

var graph = Array(repeating: [Int](), count: n+1)
var visited = Array(repeating: -1, count: n+1)

for _ in 0..<m{
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let u = input[0], v = input[1]
    graph[u].append(v)
    graph[v].append(u)
}

for i in 1...n{
    graph[i].sort(by: >)
}

var count : Int = 1
dfs(node: r)


func dfs(node: Int){
    
    visited[node] = count
    
    for i in graph[node]{
        if visited[i] == -1{
            count += 1
            dfs(node: i)
        }
    }
}

for i in 1..<visited.count{
    if visited[i] == -1{
        print(0)
        continue
    }
    print(visited[i])

}
