let NMV = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NMV[0], m = NMV[1], v = NMV[2]

var graph = Array(repeating: [Int](), count: n + 1)
var visitedDFS = Array(repeating: false, count: n + 1)
var visitedBFS = Array(repeating: false, count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let u = input[0], v = input[1]
    graph[u].append(v)
    graph[v].append(u)
}

for i in 1...n {
    graph[i].sort()
}


func dfs(node: Int) {
    visitedDFS[node] = true
    print(node, terminator: " ")
    
    for i in graph[node] {
        if !visitedDFS[i] {
            dfs(node: i)
        }
    }
}

func bfs(){
    var queue = [v]
    visitedBFS[v] = true
    while !queue.isEmpty{
        let current = queue.removeFirst()
        print(current, terminator: " ")
        for i in graph[current]{
            if !visitedBFS[i]{
                visitedBFS[i] = true
                queue.append(i)
            }
        }
    }
}


dfs(node: v)
print()
bfs()


