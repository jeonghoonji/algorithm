let T = Int(readLine()!)!
for _ in 0..<T{
    let HW = readLine()!.split(separator: " ").map{ Int($0)! }
    let h = HW[0], w = HW[1]
    var board : [[String]] = []
    var visited = Array(repeating: Array(repeating: false, count: w), count: h)
    
    var count : Int = 0
    for _ in 0..<h{
        let input = Array(readLine()!.map{ String($0) })
        board.append(input)
    }
    
    for i in 0..<h{
        for j in 0..<w{
            if board[i][j] == "#" && !visited[i][j]{
                bfs(x: i, y: j)
                count += 1
            }
        }
    }
    print(count)
    
    func bfs(x: Int, y:Int){
        var queue = [(x,y)]
        visited[x][y] = true
        
        while !queue.isEmpty{
            let current = queue.removeFirst()
            let dx = [-1,1,0,0]
            let dy = [0,0,-1,1]
            
            for i in 0..<4{
                let nx = dx[i] + current.0
                let ny = dy[i] + current.1
                if nx < h && nx >= 0 && ny < w && ny >= 0 && !visited[nx][ny]{
                    if board[nx][ny] == "#"{
                        queue.append((nx,ny))
                        visited[nx][ny] = true
                    }
                }
            }
        }
            
    }
}

