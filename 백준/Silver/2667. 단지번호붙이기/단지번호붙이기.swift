let n = Int(readLine()!)!

var board : [[Int]] = []
var visited = Array(repeating: Array(repeating: false, count: n), count: n)
var count : Int = 0
var result : [Int] = []

for _ in 0..<n{
    let input = Array(readLine()!.map{ Int(String($0))!})
    board.append(input)
}

for i in 0..<n{
    for j in 0..<n{
        if board[i][j] == 1 && !visited[i][j]{
            result.append(bfs(x:i, y:j))
            count += 1
        }
    }
}

result.sort()

func bfs(x: Int, y: Int) -> Int{
    var queue = [(x,y)]
    var house : Int = 1
    visited[x][y] = true
    let dx = [-1,1,0,0]
    let dy = [0,0,-1,1]
    
    while !queue.isEmpty{
        let current = queue.removeFirst()
        for i in 0..<4{
            let nx = dx[i] + current.0
            let ny = dy[i] + current.1
            
            if nx < n && nx >= 0 && ny < n && ny >= 0 && !visited[nx][ny] && board[nx][ny] == 1{
                visited[nx][ny] = true
                queue.append((nx,ny))
                house += 1
            }
        }
        
    }

    return house
}

print(count)
for i in result{
    print(i)
}