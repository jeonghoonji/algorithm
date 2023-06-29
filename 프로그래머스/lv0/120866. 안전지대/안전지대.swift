import Foundation

func solution(_ board:[[Int]]) -> Int {
    let row = [-1,-1,-1,0,0,1,1,1]
    let col = [-1,0,1,-1,1,-1,0,1]
    let size = board.count
    var tempArr = board

    func setBombArea(i:Int, j:Int){
        for k in 0..<8{
            if (i + row[k] >= 0 && i + row[k] < size) && (j + col[k] >= 0 && j + col[k] < size){
                tempArr[i+row[k]][j+col[k]] = 1
            }
        }

    }
    for i in 0..<size{
        for j in 0..<size{
            if board[i][j] != 1{
                continue
            }
            setBombArea(i: i, j: j)
        }
    }
    let safeArea = tempArr.map({ $0.filter({ $0 == 0 }).count }).reduce(0,+)
    return safeArea
}