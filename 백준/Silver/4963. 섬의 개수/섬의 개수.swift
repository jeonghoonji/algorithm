while true{
    let WH = readLine()!.split(separator: " ").map{ Int($0)! }
    let w = WH[0], h = WH[1]
    if w == 0 && h == 0{
        break
    }
    
    var board : [[Int]] = []
    var visited = Array(repeating: Array(repeating: false, count: w), count: h)
    var count : Int = 0
    
    if w == 1{
        if h > 1{
            for _ in 0..<h{
                let input = Int(readLine()!)!
                board.append([input])
            }
        }else{
            let input = Int(readLine()!)!
            if input == 1{
                count += 1
            }
        }
        
    }else{
        for _ in 0..<h{
            let input = readLine()!.split(separator: " ").map{ Int($0)! }
            board.append(input)
        }
        
    }
    
    if h > 1{
        for i in 0..<h{
            for j in 0..<w{
                if board[i][j] == 1 && !visited[i][j]{
                    visited = bfs(x: i, y: j,w: w, h: h, visited: visited, board: board)
                    count += 1
                }
            }
        }
    }
    
    print(count)
}
func bfs(x: Int, y:Int,w: Int, h:Int, visited: [[Bool]], board: [[Int]]) -> [[Bool]]{
    let dx = [-1,1,0,0,-1,1,1,-1]
    let dy = [0,0,-1,1,-1,1,-1,1]
    var tmpVisited = visited
    var queue = [(x,y)]
    tmpVisited[x][y] = true
    
    while !queue.isEmpty{
        let current = queue.removeFirst()
        for i in 0..<8{
            let x = dx[i] + current.0
            let y = dy[i] + current.1
            
            if x < h && x >= 0 && y < w && y >= 0 && !tmpVisited[x][y]{
                if board[x][y] == 1{
                    tmpVisited[x][y] = true
                    queue.append((x,y))
                }
            }
        }
    }
    return tmpVisited
}
