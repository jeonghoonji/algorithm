let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NM[0], m = NM[1]

var board : [[String]] = []
var visited = Array(repeating: Array(repeating: false, count: n), count: m)
var whiteArray : [Int] = []
var blueArray : [Int] = []

for _ in 0..<m{
    let input = Array(readLine()!.map{ String($0)})
    board.append(input)
}

for i in 0..<m{
    for j in 0..<n{
        if !visited[i][j] {
            let countBFS = bfs(x:i, y:j)
            if board[i][j] == "W"{
                whiteArray.append(countBFS * countBFS)
            }else{
                blueArray.append(countBFS * countBFS)
            }
            
        }
    }
}


func bfs(x:Int, y:Int) -> Int{
    var queue = [(x,y)]
    var count : Int = 0
    
    
    while !queue.isEmpty{
        let current = queue.removeFirst()
        
        let dx = [-1,1,0,0]
        let dy = [0,0,-1,1]
        for i in 0..<4{
            let nx = dx[i] + current.0
            let ny = dy[i] + current.1
            if nx < m && nx >= 0 && ny < n && ny >= 0 && !visited[nx][ny] && board[x][y] == board[nx][ny]{
                visited[nx][ny] = true
                queue.append((nx,ny))
                count += 1
            }
        }
    }
    
    return count == 0 ? 1 :  count
}
print(whiteArray.reduce(0,+),blueArray.reduce(0,+))