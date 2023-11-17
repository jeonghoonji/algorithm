let input = readLine()!.split(separator: " ").map{ Int(String($0))!}
let N = input[0]
let M = input[1]
var B = input[2]

var ground: [[Int]] = Array(repeating: Array(repeating: 0, count: M), count: N)

var maxHeight: Int = 0
var minHeight: Int = 256

var result: [Int] = Array(repeating: 0, count: 2)

for i in 0..<N{
    let input = readLine()!.split(separator: " ").map{ Int(String($0))!}
    for j in 0..<M{
        ground[i][j] = input[j]
        if maxHeight <= input[j]{
            maxHeight = input[j]
        }
        if minHeight >= input[j]{
            minHeight = input[j]
        }
    }
}


for i in stride(from: maxHeight, through: minHeight, by: -1){
    var time: Int = 0
    var tempB = B
    
    for j in 0..<ground.count{
        for k in 0..<ground[j].count{
            if ground[j][k] < i{
                tempB -= (i - ground[j][k])
                time += (i - ground[j][k])
            }else{
                tempB += (ground[j][k] - i)
                time += (ground[j][k] - i) * 2
            }
        }
    }
    if tempB < 0{
        continue
    }
    
    if result[0] == 0{
        result[0] = time
        result[1] = i
    }else{
        if result[0] > time{
            result[0] = time
            result[1] = i
        }else if result[0] == time{
            result[1] = max(result[1],i)
        }
    }
}

print(result[0],result[1])
