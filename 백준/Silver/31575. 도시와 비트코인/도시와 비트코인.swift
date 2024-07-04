let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var board: [[Int]] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: N), count: M)

for _ in 0..<M {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    board.append(row)
}

func bfs() -> String {

    let dx = [0, 1]
    let dy = [1, 0]
    
    var queue: [(Int, Int)] = [(0, 0)]
    
    while !queue.isEmpty {
        let (x, y) = queue.removeFirst()
        
        if x == M-1 && y == N-1 {
            return "Yes"
        }
        
        for i in 0..<2 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx < M && ny < N && board[nx][ny] == 1 && !visited[nx][ny] {
                visited[nx][ny] = true
                queue.append((nx, ny))
            }
        }
    }
    
    return "No"
}

print(bfs())