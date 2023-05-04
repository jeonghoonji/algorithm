let N = readLine()!.split(separator: " ").map { Int(String($0))! }
var M = readLine()!.split(separator: " ").map { Int(String($0))! }

M.sort()

var start : Int = 0
var end : Int = M.count > 1 ? M.max()! : M[0]

while start <= end {
    var sum : Int = 0
    var mid : Int = (start + end) / 2
    
    for i in M {
        let minNumber = min(i, mid)
        if minNumber == mid{
            sum += (i - minNumber)
        }
    }
    if sum < N[1]{
        end = mid - 1
    }else{
        start = mid + 1
    }
}

print(start - 1)

