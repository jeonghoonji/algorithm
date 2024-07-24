let MN = readLine()!.split(separator: " ").map{ Int($0)! }
let n = MN[0], m = MN[1]

var board : [[Int]] = []
var visited = Array(repeating: Array(repeating: false, count: n), count: m)
var check = Array(repeating: Array(repeating: 0, count: n), count: m)

var tomato : [(Int,Int)] = []
var max : Int = 0

for i in 0..<m{
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    board.append(input)
    for j in 0..<input.count{
        if input[j] == 1{
            tomato.append((i,j))
        }
    }
}

print(bfs())

func bfs() -> Int{
    var queue = tomato
    var idx : Int = 0
    while queue.count > idx{
        let current = queue[idx]
        let x = current.0, y = current.1
        visited[x][y] = true

        let dx = [-1,1,0,0]
        let dy = [0,0,-1,1]
        
        for i in 0..<4{
            let nx = dx[i] + x
            let ny = dy[i] + y
            
            if nx < m && nx >= 0 && ny < n && ny >= 0 && !visited[nx][ny] && board[nx][ny] == 0{
                visited[nx][ny] = true
                board[nx][ny] = 1
                queue.append((nx,ny))
                check[nx][ny] = check[current.0][current.1] + 1
            }
            
        }
        idx += 1
    }
    
    for i in 0..<board.count{
        for j in 0..<board[i].count{
            if board[i][j] == 0{
                return -1
            }
            if max < check[i][j]{
                max = check[i][j]
            }
        }
    }
    return max
}

