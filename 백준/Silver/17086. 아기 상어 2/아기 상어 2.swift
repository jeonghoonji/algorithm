let NM = readLine()!.split(separator: " ").map { Int($0)! }
let n = NM[0], m = NM[1]
var board : [[Int]] = []
var check = Array(repeating: Array(repeating: -1, count: m), count: n)
var visited = Array(repeating: Array(repeating: false, count: m), count: n)
var queue : [(Int,Int)] = []
var max : Int = 0

for _ in 0..<n{
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    board.append(input)
}


for i in 0..<n{
    for j in 0..<board[i].count{
        if board[i][j] == 1{
            queue.append((i,j))
            check[i][j] = 0
        }
    }
}

bfs()

func bfs(){
    let dx = [-1,1,0,0,-1,1,-1,1]
    let dy = [0,0,-1,1,1,-1,-1,1]
    
    while !queue.isEmpty{
        let current = queue.removeFirst()
        visited[current.0][current.1] = true
        
        for i in 0..<8{
            let nx = dx[i] + current.0
            let ny = dy[i] + current.1
            

            if nx >= 0 && nx < n && ny >= 0 && ny < m && check[nx][ny] == -1 {
                check[nx][ny] = check[current.0][current.1] + 1
                queue.append((nx, ny))
            }
        }
        
    }
}

for i in 0..<n {
    for j in 0..<m {
        if check[i][j] > max {
            max = check[i][j]
        }
    }
}

print(max)