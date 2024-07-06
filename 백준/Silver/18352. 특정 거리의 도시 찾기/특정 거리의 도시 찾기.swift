let NMKX = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NMKX[0], m = NMKX[1], k = NMKX[2], x = NMKX[3]

var graph = Array(repeating: [Int]() , count: n+1)
var visited = Array(repeating: false , count: n+1)
var shortCut = Array(repeating: -1 , count: n+1)
var result : [Int] = []

for _ in 0..<m{
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let u = input[0], v = input[1]
    graph[u].append(v)
}

visited[x] = true
shortCut[x] = 0

func bfs(){
    var queue = [x]
    var index : Int = 0
    while queue.count > index{
        let current = queue[index]
        for i in graph[current]{
            if !visited[i]{
                visited[i] = true
                shortCut[i] = shortCut[current] + 1
                if k == shortCut[i]{
                    result.append(i)
                }
                queue.append(i)
            }
        }
        index += 1
    }
}
bfs()

result.sort()

if result.count == 0{
    print(-1)
}else{
    for i in result{
        print(i)
    }
}
