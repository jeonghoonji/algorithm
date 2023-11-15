var board: [[Int]] = []
var correct: [[Bool]] = Array(repeating: Array(repeating: false, count: 5), count: 5)

var result: Int = 0

for _ in 0..<5{
    let input = readLine()!.split(separator: " ").map{ Int(String($0))!}
    board.append(input)
}

print(solve())

func solve() -> Int{
    for _ in 0..<5{
        let input = readLine()!.split(separator: " ").map{ Int(String($0))!}
        for j in 0..<input.count{
            result += 1
            if deleteNumber(n: input[j]){
                return result
            }
        }
        
    }
    return 9999
}


func deleteNumber(n: Int) -> Bool{
    
    for i in 0..<board.count{
        for j in 0..<board[i].count{
            if n == board[j][i]{
                correct[i][j] = true
                return bingo()
            }
        }
    }

    return false
}

func bingo() -> Bool{
    var bingoCount: Int = 0

    for i in 0..<5{
        var count: Int = 0
        for j in 0..<5{
            if correct[i][j] == false{
                break
            }else{
                count += 1
            }
        }
        
        if count == 5{
            bingoCount += 1
        }
    }

    for i in 0..<5{
        var count: Int = 0
        for j in 0..<5{
            if correct[j][i] == false{
                break
            }else{
                count += 1
            }
        }
        if count == 5{
            bingoCount += 1
        }
    }

    downRight()
    upLeft()
    
    func downRight(){
        var count: Int = 0
        for i in 0..<5{
            if correct[i][i] == false{
                break
            }else{
                count += 1
            }
        }
        if count == 5{
            bingoCount += 1
        }
    }
    
    func upLeft(){
        var count: Int = 0
        
        for i in stride(from: 4, through: 0, by: -1){
            if correct[i][4-i] == false{
                break
            }else{
                count += 1
            }
        }
        if count == 5{
            bingoCount += 1
        }
    }
    return bingoCount >= 3 ? true : false
}
