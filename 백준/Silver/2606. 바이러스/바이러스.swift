
let count = Int(readLine()!)!
let pairs = Int(readLine()!)!

var graph : [Int : [Int]] = [:]

for i in 0..<pairs{
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let key = input[0]
    let value = input[1]
    
    if var temp = graph[key] {
        temp.append(value)
        graph[key] = temp
    } else {
        graph[key] = [value]
    }

    if var temp = graph[value] {
        temp.append(key)
        graph[value] = temp
    } else {
        graph[value] = [key]
    }
    
}

print(bfs(graph: graph))

func bfs(graph: [Int: [Int]]) -> Int{

    var visited = Set<Int>()
    
    var queue = [1]
    visited.insert(1)
    
    while !queue.isEmpty{
        let currentNode = queue.removeFirst()
        
        if let temp = graph[currentNode] {
            for node in temp{
                if visited.contains(node){
                    continue
                }
                visited.insert(node)
                queue.append(node)
            }
        }

    }

    return visited.count - 1
}