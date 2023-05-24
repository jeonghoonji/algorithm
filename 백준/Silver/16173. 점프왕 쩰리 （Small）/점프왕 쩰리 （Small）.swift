let N = Int(readLine()!)!
var board = [[Int]]()

for _ in 0..<N {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    board.append(row)
}
var visited = Array(repeating: Array(repeating: false, count: N), count: N)

let dx = [0, 1]
let dy = [1, 0]

func isValid(_ x: Int, _ y: Int) -> Bool {
    return x >= 0 && x < N && y >= 0 && y < N
}

func bfs() -> Bool {
    var queue = [(0, 0)]
    visited[0][0] = true
    
    while !queue.isEmpty {
        let (x, y) = queue.removeFirst()
        let jumpSize = board[x][y]
        
        if jumpSize == -1 {
            return true
        }
        
        for i in 0..<2 {
            let nx = x + dx[i] * jumpSize
            let ny = y + dy[i] * jumpSize
            if isValid(nx, ny) && !visited[nx][ny] {
                visited[nx][ny] = true
                queue.append((nx, ny))
            }
        }
    }
    
    return false
}

print(bfs() ? "HaruHaru" : "Hing")