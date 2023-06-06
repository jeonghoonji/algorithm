let str = readLine()!.map{String($0)}

var k : Int = 0
var p : Int = 0

for i in str{
    if i == "K"{
        if p >= 1 {
            p -= 1
        }
        k += 1
        
    }
    if i == "P"{
        if k >= 1 {
            k -= 1
        }
        p += 1
        
    }
}
print(k+p)