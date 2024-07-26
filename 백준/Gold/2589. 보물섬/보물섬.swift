let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NM[0], m = NM[1]

var board: [[String]] = []
for _ in 0..<n {
    let input = Array(readLine()!.map { String($0) })
    board.append(input)
}

var result: Int = 0

for i in 0..<n {
    for j in 0..<m {
        if board[i][j] == "L" {
            result = max(result, bfs(x: i, y: j))
        }
    }
}
print(result)

func bfs(x: Int, y: Int) -> Int {
    var check = Array(repeating: Array(repeating: 0, count: m), count: n)
    var visited = Array(repeating: Array(repeating: false, count: m), count: n)
    
    var queue = [(x, y)]
    visited[x][y] = true
    var count = 0
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        let dx = [-1, 1, 0, 0]
        let dy = [0, 0, -1, 1]
        
        for i in 0..<4 {
            let nx = current.0 + dx[i]
            let ny = current.1 + dy[i]
            
            if nx >= 0 && nx < n && ny >= 0 && ny < m && !visited[nx][ny] && board[nx][ny] == "L" {
                visited[nx][ny] = true
                queue.append((nx, ny))
                check[nx][ny] = check[current.0][current.1] + 1
                count = max(count, check[nx][ny])
            }
        }
    }
    return count
}
