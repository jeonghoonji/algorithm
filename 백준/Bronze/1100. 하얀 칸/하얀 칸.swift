var box = Array(repeating: Array(repeating: "", count: 8), count: 8)

for i in 0..<8{
    let input = Array(readLine()!.map{String($0)})
    for j in 0..<input.count{
        box[i][j] = input[j]
    }
}

var result : Int = 0
for i in 0..<box.count{
    for j in 0..<box[i].count{
        if box[i][j] == "."{
            continue
        }
        if i % 2 == 0 {
            if box[i][j] == "F" && j % 2 == 0 {
                result += 1
            }
        }else{
            if box[i][j] == "F" && j % 2 != 0 {
                result += 1
            }
        }
        
    }
}
print(result)
