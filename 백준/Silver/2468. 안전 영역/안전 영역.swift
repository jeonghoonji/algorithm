let N = Int(readLine()!)!

var board : [[Int]] = []
var result : [Int] = []

var min : Int = 100
var max : Int = 1

for _ in 0..<N{
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    for i in input{
        if i > max{
            max = i
        }
        if i < min{
            min = i
        }
    }
    board.append(input)
}

for i in min...max{
    action(num:i)
}

if result.count == 1{
    print(1)
}else{
    print(result.max()!)
}


func action(num: Int){
    var count : Int = 0
    var visited = Array(repeating: Array(repeating: false, count: N), count: N)

    for i in 0..<N{
        for j in 0..<N{
            if board[i][j] > num && !visited[i][j]{
                bfs(x: i, y: j, height: num, visited: &visited)
                count += 1
            }
        }
    }
    result.append(count)
}


func bfs(x: Int, y: Int, height: Int, visited: inout [[Bool]]) {
    var queue = [(x,y)]
    while !queue.isEmpty{
        let current = queue.removeFirst()
        visited[current.0][current.1] = true
        let dx = [-1,1,0,0]
        let dy = [0,0,-1,1]
        
        for i in 0..<4{
            let nx = dx[i] + current.0
            let ny = dy[i] + current.1
            
            if nx < N && nx >= 0 && ny < N && ny >= 0 && !visited[nx][ny] && board[nx][ny] > height{
                visited[nx][ny] = true
                queue.append((nx,ny))
            }
            
        }
    }

}