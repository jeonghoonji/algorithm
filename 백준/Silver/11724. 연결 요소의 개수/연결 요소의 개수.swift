let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NM[0], m = NM[1]
var graph = Array(repeating: [Int](), count: n+1)
var visited = Array(repeating: false, count: n+1)
var count : Int = 0

visited[0] = true

if m > 0{
    for _ in 0..<m{
        let input = readLine()!.split(separator: " ").map{ Int($0)! }
        let u = input[0], v = input[1]
        graph[u].append(v)
        graph[v].append(u)
    }
    for i in 1...n{
        if !visited[i]{
            bfs(n: i)
            count += 1
        }
    }
}else{
    count = n
}




func bfs(n: Int){
    var queue = [n]
    visited[n] = true
    while !queue.isEmpty{
        let current = queue.removeFirst()
        for i in graph[current]{
            if !visited[i]{
                visited[i] = true
                queue.append(i)
            }
        }
    }
}

print(count)