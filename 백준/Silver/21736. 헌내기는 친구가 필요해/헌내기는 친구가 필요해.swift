let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NM[0], m = NM[1]

var board : [[String]] = []
var visited = Array(repeating: Array(repeating: false, count: m), count: n)
var doyeon : (Int,Int) = (0,0)
var result : Int = 0
let dx = [-1,1,0,0]
let dy = [0,0,-1,1]

for i in 0..<n{
    let input = readLine()!.map{ String($0) }
    for j in 0..<input.count{
        if !(input[j] == "I"){
            continue
        }
        doyeon = (i,j)
    }
    board.append(input)
}

var queue = [doyeon]
visited[doyeon.0][doyeon.1] = true

func bfs(){
    
    while !queue.isEmpty{
        let current = queue.removeFirst()
        for i in 0..<4{
            let x = dx[i] + current.0
            let y = dy[i] + current.1
            if x < n && x >= 0 && y < m && y >= 0 && !visited[x][y]{
                if board[x][y] == "O"{
                    visited[x][y] = true
                    queue.append((x,y))
                }else if board[x][y] == "X"{
                    visited[x][y] = true
                }else {
                    visited[x][y] = true
                    queue.append((x,y))
                    result += 1
                }
            }
            
        }
        
    }
}

bfs()

if result == 0{
    print("TT")
}else{
    print(result)
}