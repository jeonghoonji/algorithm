let MN = readLine()!.split(separator: " ").map{ Int($0)! }
let m = MN[0], n = MN[1]

var board : [[Int]] = []
var visited = Array(repeating: Array(repeating: false, count: n), count: m)
var count : Int = 0

for _ in 0..<m{
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    board.append(input)
}

for i in 0..<m{
    for j in 0..<n{
        if !visited[i][j] && board[i][j] == 1{
            bfs(x:i, y:j)
            count += 1
        }
    }
}

func bfs(x:Int, y:Int){
    var queue = [(x,y)]
    
    visited[x][y] = true
    
    while !queue.isEmpty{
        let current = queue.removeFirst()
        let dx = [-1,1,0,0,-1,-1,1,1]
        let dy = [0,0,-1,1,-1,1,-1,1]
        
        for i in 0..<8{
            let nx = dx[i] + current.0
            let ny = dy[i] + current.1
            
            if nx < m && nx >= 0 && ny < n && ny >= 0 && !visited[nx][ny] && board[nx][ny] == 1{
                visited[nx][ny] = true
                queue.append((nx,ny))
            }
        }
    }
}
print(count)