let NMR = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NMR[0]
let m = NMR[1]
let r = NMR[2]

var graph = Array(repeating: [Int]() , count: n+1)
var visited = Array(repeating: false , count: n+1)
var result = Array(repeating: -1 , count: n+1)

for _ in 0..<m{
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let u = input[0]
    let v = input[1]
    graph[u].append(v)
    graph[v].append(u)
}

visited[r] = true
result[r] = 0

func bfs(){
    var queue = [r]
    var index : Int = 0
    
    while queue.count > index{
        var current = queue[index]
        for i in graph[current]{
            if !visited[i]{
                visited[i] = true
                result[i] = result[current] + 1
                queue.append(i)
            }
           
        }
        index += 1
    }
}
bfs()
for i in 1..<result.count{
    print(result[i])
}


