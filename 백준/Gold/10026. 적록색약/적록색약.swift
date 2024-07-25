let n = Int(readLine()!)!

var board : [[String]] = []
var visited = Array(repeating: Array(repeating: false, count: n), count: n)
var redGreenVisited = Array(repeating: Array(repeating: false, count: n), count: n)
var result = Array(repeating: 0, count: 4)

for _ in 0..<n{
    let input = Array(readLine()!.map{ String($0) })
    board.append(input)
}

for i in 0..<n{
    for j in 0..<n{
        if !visited[i][j]{
            let str = bfs(x:i, y:j)
            switch str{
            case "R":
                result[0] += 1
            case "G":
                result[1] += 1
            default:
                result[2] += 1
            }
        }
        if !redGreenVisited[i][j] && board[i][j] != "B"{
            result[3] += redGreenBfs(x:i, y:j)
        }
    }
}

print(result[0] + result[1] + result[2], result[2] + result[3])

func bfs(x:Int, y:Int) -> String{
    var queue = [(x,y)]
    
    while !queue.isEmpty{
        let current = queue.removeFirst()
        let dx = [-1,1,0,0]
        let dy = [0,0,-1,1]
        for i in 0..<4{
            let nx = dx[i] + current.0
            let ny = dy[i] + current.1
            if nx < n && nx >= 0 && ny < n && ny >= 0 && !visited[nx][ny] && board[nx][ny] == board[current.0][current.1]{
                visited[nx][ny] = true
                queue.append((nx,ny))
            }
        }
    }
    return board[x][y]
}

func redGreenBfs(x: Int, y:Int) -> Int{
    var queue = [(x,y)]
    while !queue.isEmpty{
        let current = queue.removeFirst()
        let dx = [-1,1,0,0]
        let dy = [0,0,-1,1]
        for i in 0..<4{
            let nx = dx[i] + current.0
            let ny = dy[i] + current.1
            if nx < n && nx >= 0 && ny < n && ny >= 0 && !redGreenVisited[nx][ny] && board[nx][ny] != "B"{
                redGreenVisited[nx][ny] = true
                queue.append((nx,ny))
            }
        }
    }
    return  1
}

