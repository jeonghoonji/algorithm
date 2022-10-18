import Foundation

func solution(_ common:[Int]) -> Int {
    
    var arr : [Int] = common
    if (arr[1] - arr[0] == arr[2] - arr[1] ){
        return arr.removeLast() + arr[1] - arr[0]
    }else{
        for i in 1...common.count{
    
            if( (arr[1] - arr[0]) * i == (arr[2] - arr[1]) ) {
        
                return arr.removeLast() * i
            }
        }
    }
 
    return 0
}

