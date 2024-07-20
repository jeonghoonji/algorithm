let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NM[0], m = NM[1]

var board : [[Int]] = []
var visited = Array(repeating: Array(repeating: false, count: m), count: n)
var count : Int = 0
var returnValue : Int = 0
var max : Int = 0


for _ in 0..<n{
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    board.append(input)
}

for i in 0..<n{
    for j in 0..<m{
        if board[i][j] == 1 && !visited[i][j]{
            returnValue = bfs(x:i, y:j)
            if max < returnValue{
                max = returnValue
            }
            count += 1
        }
    }
}

func bfs(x: Int, y: Int) -> Int{
    var queue = [(x,y)]
    visited[x][y] = true
    var count : Int = 0
    
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
            }
        }
        count += 1
    }
    return count
}
print(count)
print(max)