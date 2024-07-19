let T = Int(readLine()!)!

for _ in 0..<T{
    let I = Int(readLine()!)!
    var board = Array(repeating: Array(repeating: false, count: I), count: I)       //visited
    var check = Array(repeating: Array(repeating: 0, count: I), count: I)
    
    let XY = readLine()!.split(separator: " ").map{ Int($0)! }
    let pointXY = readLine()!.split(separator: " ").map{ Int($0)! }
    let x = XY[0], y = XY[1]
    let px = pointXY[0], py = pointXY[1]
    
    print(bfs())
    
    func bfs() -> Int{
        
        var queue = [(x,y)]
        board[x][y] = true
        while !queue.isEmpty{
            let current = queue.removeFirst()
            let dx = [-2,-1,1,2,-2,-1,1,2]
            let dy = [-1,-2,-2,-1,1,2,2,1]
            
            if current.0 == px && current.1 == py{
                return check[current.0][current.1]
            }
            
            for j in 0..<8{
                let nx = dx[j] + current.0
                let ny = dy[j] + current.1
                
                if nx < I && nx >= 0 && ny < I && ny >= 0 && !board[nx][ny]{
                    board[nx][ny] = true
                    check[nx][ny] = check[current.0][current.1] + 1
                    queue.append((nx,ny))
                }
            }
        }
        
        return -1
    }
   
}

