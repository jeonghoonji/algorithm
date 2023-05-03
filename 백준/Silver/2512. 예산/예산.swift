let n = Int(readLine()!)!
var numberArr = readLine()!.split(separator: " ").map { Int(String($0))! }
let max = Int(readLine()!)!

var left : Int = 0
var right : Int = numberArr.max()!
var mid : Int = (left + right) / 2

func checking() -> Bool{
    var sum : Int = 0
    for i in numberArr{
        sum += min(i,mid)
    }

    if sum > max{
        return false
    }else{
        return true
    }
}

while left <= right {
    if checking(){
        left = left + 1
    }else{
        right = right - 1
    }
    mid = (left + right) / 2
    
}
print(mid)