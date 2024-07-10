let T = Int(readLine()!)!

for _ in 0..<T{
    let NMK = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = NMK[0], m = NMK[1], k = NMK[2]
    var board = Array(repeating: Array(repeating: 0, count: m), count: n)
    var visited = Array(repeating: Array(repeating: false, count: m), count: n)
    var count : Int = 0
    
    for _ in 0..<k{
        let input = readLine()!.split(separator: " ").map{ Int($0)! }
        let x = input[0], y = input[1]
        board[x][y] = 1
    }
    
    for i in 0..<n{
        for j in 0..<m{
            if board[i][j] == 1 && !visited[i][j]{
                visited = bfs(x: i,y: j,n: n,m: m, board: board, visited: visited)
                count += 1
            }
        }
    }
    print(count)
}

func bfs(x: Int,y: Int, n: Int,m: Int, board: [[Int]], visited: [[Bool]]) -> [[Bool]]{
    var queue = [(x,y)]
    let dx = [-1,1,0,0]
    let dy = [0,0,-1,1]
    var tmpVisited = visited
    while !queue.isEmpty{
        let current = queue.removeFirst()
        for i in 0..<4{
            let x = current.0 + dx[i]
            let y = current.1 + dy[i]
            if x < n && x >= 0 && y < m && y >= 0 && !tmpVisited[x][y]{
                if board[x][y] == 1{
                    tmpVisited[x][y] = true
                    queue.append((x,y))
                }
            }
        }

    }
    return tmpVisited
}