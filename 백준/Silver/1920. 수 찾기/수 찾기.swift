func binarySearch(arrN:[Int], num: Int) -> Int {
    var start = 0
    var end = arrN.count - 1
    
    if num < arrN[0]{ //
        return 0
    }else if num > arrN[arrN.count - 1]{
        return 0
    }
    else{
        while start <= end{
            let mid = (start + end) / 2
            if arrN[mid] == num{
                return 1
            }
            if arrN[mid] > num {
                end = mid - 1
            }else{
                start = mid + 1
            }
        }
    }
    return 0
}

let n = Int(readLine()!)!
var arrN = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = Int(readLine()!)!
let arrM = readLine()!.split(separator: " ").map { Int(String($0))! }

arrN.sort()

for i in 0..<m{
    print(binarySearch(arrN: arrN, num: arrM[i]))
}