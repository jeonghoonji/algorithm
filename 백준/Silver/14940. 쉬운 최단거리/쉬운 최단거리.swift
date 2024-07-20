let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NM[0], m = NM[1]

var board : [[Int]] = []
var visited = Array(repeating: Array(repeating: false, count: m), count: n)
var result = Array(repeating: Array(repeating: 0, count: m), count: n)

for _ in 0..<n{
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    board.append(input)
}

for i in 0..<n{
    for j in 0..<m{
        if board[i][j] == 2{
            bfs(x:i, y:j)
        }
    }
}

func bfs(x: Int,y: Int){
    var queue = [(x,y)]

    
    while !queue.isEmpty{
        let current = queue.removeFirst()
        
        let dx = [-1,1,0,0]
        let dy = [0,0,-1,1]
        for i in 0..<4{
            let nx = dx[i] + current.0
            let ny = dy[i] + current.1
            if nx < n && nx >= 0 && ny < m && ny >= 0 && !visited[nx][ny] && board[nx][ny] == 1{
                visited[nx][ny] = true
                queue.append((nx,ny))
                result[nx][ny] = result[current.0][current.1] + 1
            }
        }
    }
}

for i in 0..<n{
    for j in 0..<m{
        if !visited[i][j] && board[i][j] == 1{
            result[i][j] = -1
        }
    }
}


for i in result{
    print(i.map{String($0)}.joined(separator: " "))
}