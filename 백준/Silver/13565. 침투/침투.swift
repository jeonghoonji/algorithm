let MN = readLine()!.split(separator: " ").map { Int($0)! }
let m = MN[0], n = MN[1]

var board : [[String]] = []
var visited = Array(repeating: Array(repeating: false, count: n), count: m)
var queue : [(Int,Int)] = []

for _ in 0..<m{
    let input = Array(readLine()!.map { String($0) })
    board.append(input)
}


for i in 0..<n{
    if board[0][i] == "0"{
        queue.append((0,i))
        visited[0][i] = true
    }
}

print(bfs())

func bfs() -> String{
    
    while !queue.isEmpty{
        let current = queue.removeFirst()
        
        let dx = [-1,1,0,0]
        let dy = [0,0,-1,1]
                
        for i in 0..<4{
            let nx = dx[i] + current.0
            let ny = dy[i] + current.1
            
            if nx < m && nx >= 0 && ny < n && ny >= 0 && !visited[nx][ny] && board[nx][ny] == "0"{
                visited[nx][ny] = true
                queue.append((nx,ny))
                
            }
        }
    }
    
    for i in 0..<n{
        if visited[m-1][i] == true{
            return "YES"
        }
    }
    return "NO"
}

