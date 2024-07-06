var board : [[Int]] = []

for _ in 0..<5{
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    board.append(input)
}
let RC = readLine()!.split(separator: " ").map{ Int($0)! }
let r = RC[0], c = RC[1]
var visited = Array(repeating: Array(repeating: false, count: 5), count: 5)
var count = Array(repeating: Array(repeating: 0, count: 5), count: 5)

let dx = [-1,1,0,0]
let dy = [0,0,-1,1]

var result : [Int] = []
var queue = [(r,c)]
visited[r][c] = true
count[r][c] = 0

func bfs(){
    
    while !queue.isEmpty{
        let current = queue.removeFirst()
        for i in 0..<4{
            let x = dx[i] + current.0
            let y = dy[i] + current.1
            if x < 5 && x >= 0 && y < 5 && y >= 0 && !visited[x][y]{
                if board[x][y] == 0{
                    visited[x][y] = true
                    queue.append((x,y))
                    count[x][y] = count[current.0][current.1] + 1
                }else if board[x][y] == 1{
                    result.append(count[current.0][current.1] + 1)
                    visited[x][y] = true
                }else{
                    visited[x][y] = true
                }
                
            }
        }
    }
    
}

bfs()

if result.isEmpty{
    print(-1)
}else{
    print(result.min()!)
}