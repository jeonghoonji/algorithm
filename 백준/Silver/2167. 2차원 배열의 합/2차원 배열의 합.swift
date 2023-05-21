let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let row = input[0] 
let col = input[1] 

var numberArray : [[Int]] = Array(repeating: Array(repeating: 0, count: col), count: row)
for i in 0..<row{
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    for j in 0..<col{
        numberArray[i][j] = input[j]
    }
}

let K = Int(readLine()!)!      

for _ in 0..<K{
    print(solve())
}

func solve() -> Int{
    let input = readLine()!.split(separator: " ").map { Int(String($0))!}
    
    let i = input[0] - 1
    let j = input[1] - 1
    let x = input[2] - 1
    let y = input[3] - 1
    
    var sum : Int = 0
    
    for i in i...x{
        for j in j...y{
            sum += numberArray[i][j]
        }
    }
    return sum
}