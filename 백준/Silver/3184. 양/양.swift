let RC = readLine()!.split(separator: " ").map{ Int($0)! }
let r = RC[0], c = RC[1]

var board: [[String]] = []
var visited = Array(repeating: Array(repeating: false, count: c), count: r)
var result = (0, 0)

for _ in 0..<r {
    let input = Array(readLine()!.map{ String($0) })
    board.append(input)
}

for i in 0..<r {
    for j in 0..<c {
        if (board[i][j] == "v" || board[i][j] == "o") && !visited[i][j] {
            let (sheep, wolves) = bfs(x: i, y: j)
            result.0 += sheep
            result.1 += wolves
        }
    }
}

print("\(result.0) \(result.1)")

func bfs(x: Int, y: Int) -> (Int, Int) {
    var queue = [(x, y)]
    visited[x][y] = true
    var sheepCount = 0
    var wolfCount = 0
    
    if board[x][y] == "o" {
        sheepCount += 1
    } else if board[x][y] == "v" {
        wolfCount += 1
    }

    while !queue.isEmpty {
        let current = queue.removeFirst()
        
        let dx = [-1, 1, 0, 0]
        let dy = [0, 0, -1, 1]
        
        for i in 0..<4 {
            let nx = dx[i] + current.0
            let ny = dy[i] + current.1
            
            if nx < r && nx >= 0 && ny < c && ny >= 0 && !visited[nx][ny] && board[nx][ny] != "#" {
                if board[nx][ny] == "o" {
                    sheepCount += 1
                }
                if board[nx][ny] == "v" {
                    wolfCount += 1
                }
                visited[nx][ny] = true
                queue.append((nx, ny))
            }
        }
    }
    
    if wolfCount >= sheepCount {
        return (0, wolfCount)
    } else {
        return (sheepCount, 0)
    }
}