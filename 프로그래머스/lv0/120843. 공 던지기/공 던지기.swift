import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    
    var arr : [Int] = []
    var result : Int = 0
    result = (2 * k) - 2

    for _ in 0..<k{
        arr += numbers
    }

    return arr[result]
}

