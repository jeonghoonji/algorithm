import Foundation

func solution(_ numbers:[Int]) -> Int {
    var arr : [Int] = []
    var front : Int = 0
    var back : Int = 0
    arr =  numbers.sorted()
    //둘 다 음수 일 때
    if arr[0] < 0 && arr[1] < 0{
        front = ( abs(arr[0]) * abs(arr[1]) )
    }
    
    front = ( arr[0] * arr[1] )
    back = ( arr[arr.count-2] * arr[arr.count-1] )
    if front > back {
        return front
    }
    return back
}