
let MNK = readLine()!.split(separator: " ").map{ Int($0)! }
let m = MNK[0], n = MNK[1], k = MNK[2]

var board = Array(repeating: Array(repeating: false, count: n), count: m)
var count : Int = 0
var result : [Int] = []

for _ in 0..<k{
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let leftX = input[1], leftY = input[0]
    let rightX = input[3], rightY = input[2]
    for i in leftX...rightX-1{
        for j in leftY...rightY-1{
            board[i][j] = true
        }
    }
}

for i in 0..<board.count{
    for j in 0..<board[i].count{
        if !board[i][j]{
            result.append(bfs(x:i, y:j))
            count += 1
        }
        
        
    }
}
print(count)
print(result.sorted().map{ String($0) }.joined(separator: " "))

func bfs(x: Int, y: Int) -> Int{
    var queue = [(x,y)]
    var count : Int = 0
    board[x][y] = true
    while !queue.isEmpty{
        let current = queue.removeFirst()
        let dx = [-1,1,0,0]
        let dy = [0,0,-1,1]
        
        for i in 0..<4{
            let nx = dx[i] + current.0
            let ny = dy[i] + current.1
            
            if nx < m && nx >= 0 && ny < n && ny >= 0 && !board[nx][ny]{
                board[nx][ny] = true
                queue.append((nx,ny))
            }
        }
        count += 1
    }
    return count
}

