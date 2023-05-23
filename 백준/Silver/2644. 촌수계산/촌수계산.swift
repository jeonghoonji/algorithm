let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let num1 = input[0]
let num2 = input[1]
let m = Int(readLine()!)!

var graph : [[Int]] = Array(repeating: [], count: n+1)
for _ in 0..<m{
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let x = input[0]        
    let y = input[1]        
    graph[x].append(y)      
    graph[y].append(x)      
}
var visited : [Bool] = Array(repeating: false, count: n+1)      

print(bfs(graph: graph))

func bfs(graph: [[Int]]) -> Int{
    var queue = [(num1 , 0) ]       
    var find : Bool = false         
    visited[num1] = true            
    
    while !queue.isEmpty{
        let currentNode = queue.removeFirst()
        
        if currentNode.0 == num2{       
            find = true                 
            return currentNode.1        
        }
        
        for node in graph[currentNode.0]{   
            if visited[node] == true{
                continue
            }
            visited[node] = true
            queue.append((node,currentNode.1 + 1))
        }
    }
    return -1
}