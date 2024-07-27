let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NM[0], m = NM[1]

var graph = Array(repeating: [Int]() , count: n+1)
var memo = Array(repeating: -1, count: n+1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let u = input[0], v = input[1]
    graph[v].append(u)
}

var result: [Int] = []

for i in 1...n {
    result.append(dfs(node: i))
}

func dfs(node: Int) -> Int {
    
    if memo[node] != -1 {
        return memo[node]
    }
    
    var stack = [node]
    var visited = Array(repeating: false, count: n+1)
    visited[node] = true
    var hacking = 0
    
    while !stack.isEmpty {
        let current = stack.removeLast()
        for i in graph[current] {
            if !visited[i] {
                visited[i] = true
                stack.append(i)
                hacking += 1
            }
        }
    }
    
    memo[node] = hacking
    return hacking
}

let max = result.max()!
for i in 0..<result.count {
    if result[i] == max {
        print(i+1, terminator: " ")
    }
}
