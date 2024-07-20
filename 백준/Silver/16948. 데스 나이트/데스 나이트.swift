let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{ Int($0)! }
let r1 = input[0], c1 = input[1], r2 = input[2], c2 = input[3]

var visited = Array(repeating: Array(repeating: false, count: N), count: N)
var check = Array(repeating: Array(repeating: 0, count: N), count: N)

print(bfs())

func bfs() -> Int{
    var queue = [(r1,c1)]
    var count : Int = 0
    visited[r1][c1] = true
    while !queue.isEmpty{
        let current = queue.removeFirst()
        let dx = [-2,-2,0,0,2,2]
        let dy = [-1,1,-2,2,-1,1]
        
        if current.0 == r2 && current.1 == c2{
            return check[r2][c2]
        }
        
        for i in 0..<6{
            let nx = dx[i] + current.0
            let ny = dy[i] + current.1
            
            if nx < N && nx >= 0 && ny < N && ny >= 0 && !visited[nx][ny]{
                visited[nx][ny] = true
                queue.append((nx,ny))
                check[nx][ny] = check[current.0][current.1] + 1
            }
        }
        count += 1
        
    }
    
    return -1
}