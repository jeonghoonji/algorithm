let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NM[0], m = NM[1]

var board : [[Int]] = []
var visited = Array(repeating: Array(repeating: false, count: m), count: n)
var check = Array(repeating: Array(repeating: 0, count: m), count: n)

for i in 0..<n{
    let input = Array(readLine()!.map{ Int(String($0))!})
    board.append(input)
}

bfs()

func bfs() {
    var queue = [(0,0)]
    visited[0][0] = true
    
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
                check[nx][ny] = check[current.0][current.1]+1
            }

        }
        
    }
}
print(check[n-1][m-1]+1)