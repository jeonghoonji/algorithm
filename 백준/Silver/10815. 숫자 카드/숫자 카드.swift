func binarySearch(arr: [Int], number: Int) -> Int{
    var left : Int = 0
    var right : Int = arr.count - 1
    
    while left <= right {
        let mid : Int = (left + right) / 2
        
        if number == array_N[mid]{
            return 1
        }
        
        if array_N[mid] < number{
            left = mid + 1
        }else{
            right = mid - 1
        }
    }
    return 0
}

let N = Int(readLine()!)!
var array_N = readLine()!.split(separator: " ").map { Int(String($0))! }
let M = Int(readLine()!)!
var array_M = readLine()!.split(separator: " ").map { Int(String($0))! }

array_N.sort()

for num in 0..<M{
    print(binarySearch(arr: array_N, number: array_M[num]))
}