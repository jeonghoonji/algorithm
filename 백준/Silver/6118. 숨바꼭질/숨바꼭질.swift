
let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NM[0], m = NM[1]

var graph = Array(repeating: [Int](), count: n+1)
var visited = Array(repeating: false, count: n+1)
var check = Array(repeating: 0, count: n+1)
var result : [Int] = []
var max : Int = 0

for _ in 0..<m{
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
                check[i] = check[current] + 1
            }
        }
        
    }
}

max = check.max()!

for i in 1..<check.count{
    if max == check[i]{
        result.append(i)
    }
}

if let minResult = result.min() {
    print(minResult, max, result.count)
}