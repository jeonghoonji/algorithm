
let MNH = readLine()!.split(separator: " ").map{ Int($0)! }
let n = MNH[0], m = MNH[1], h = MNH[2]

var board : [[[Int]]] = []
var visited = Array(repeating: Array(repeating: Array(repeating: false, count: n), count: m), count: h)
var check = Array(repeating: Array(repeating: Array(repeating: 0, count: n), count: m), count: h)

var tomato : [(Int,Int,Int)] = []
var max : Int = 0

for i in 0..<h{
    var tmp : [[Int]] = []
    for j in 0..<m{
        let input = readLine()!.split(separator: " ").map{ Int($0)! }
        tmp.append(input)
        for k in 0..<n{
            if input[k] == 1{
                tomato.append((i,j,k))
            }
        }
                
    }
    board.append(tmp)
}

print(bfs())

func bfs() -> Int{
    var queue = tomato
    var idx : Int = 0
    while queue.count > idx{
        let current = queue[idx]
        let z = current.0, x = current.1, y = current.2
        
        visited[z][x][y] = true

        let dx = [-1,1,0,0,0,0]
        let dy = [0,0,-1,1,0,0]
        let dz = [0,0,0,0,-1,1]
        
        for i in 0..<6{
            let nx = dx[i] + x
            let ny = dy[i] + y
            let nz = dz[i] + z
            
            if nx < m && nx >= 0 && ny < n && ny >= 0 && nz < h && nz >= 0 && !visited[nz][nx][ny] && board[nz][nx][ny] == 0{
                visited[nz][nx][ny] = true
                board[nz][nx][ny] = 1
                queue.append((nz,nx,ny))
                check[nz][nx][ny] = check[z][x][y] + 1
            }
            
        }
        idx += 1
    }
    
    for i in 0..<board.count{
        for j in 0..<board[i].count{
            for k in 0..<board[i][j].count{
                if board[i][j][k] == 0{
                    return -1
                }
                if max < check[i][j][k]{
                    max = check[i][j][k]
                }
            }
           
        }
    }
    return max
}
