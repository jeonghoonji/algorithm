let NMK = readLine()!.split(separator: " ").map{ Int($0)! }
let n = NMK[0], m = NMK[1], k = NMK[2]

var board = Array(repeating: Array(repeating: ".", count: m), count: n)
var visited = Array(repeating: Array(repeating: false, count: m), count: n)
var trash : [(Int,Int)] = []
var result : [Int] = []

for _ in 0..<k{
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let x = input[0], y = input[1]
    board[x-1][y-1] = "#"
    trash.append((x-1,y-1))
}

for i in trash{
    result.append(bfs(x:i.0, y:i.1))
}
print(result.max()!)

func bfs(x:Int, y: Int) -> Int{
    var queue = [(x,y)]
    let dx = [-1,1,0,0]
    let dy = [0,0,-1,1]
    var count : Int = 1
    
    while !queue.isEmpty{
        let current = queue.removeFirst()
        visited[current.0][current.1] = true
        
        for i in 0..<4{
            let nx = dx[i] + current.0
            let ny = dy[i] + current.1
            
            if nx < n && nx >= 0 && ny < m && ny >= 0 && !visited[nx][ny] && board[nx][ny] == "#"{
                visited[nx][ny] = true
                queue.append((nx,ny))
                count += 1
            }
        }
    }
    return count
}