let NMR = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NMR[0]
let m = NMR[1]
let r = NMR[2]

var graph = Array(repeating: [Int]() , count: n+1)
var visited = Array(repeating: false , count: n+1)
var t = Array(repeating: 0 , count: n+1)
var d = Array(repeating: -1 , count: n+1)
var count : Int = 1
var result : Int = 0

for _ in 0..<m{
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let u = input[0]
    let v = input[1]
    graph[u].append(v)
    graph[v].append(u)
}

for i in 1..<n+1{
    graph[i].sort(by: <)
}
visited[r] = true

t[r] = 1
d[r] = 0

func bfs(){
    var queue = [r]
    var index : Int = 0
    
    while queue.count > index{
        var current = queue[index]
        for i in graph[current]{
            if !visited[i]{
                visited[i] = true
                count += 1
                t[i] = count
                d[i] = d[current] + 1
                queue.append(i)
            }
           
        }
        index += 1
    }
}
bfs()

for i in 1..<t.count{
    result += t[i] * d[i]
}
print(result)