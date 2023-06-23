import Foundation

func solution(_ arr:[[Int]]) -> Int {
    var result : Int = 0
    for i in 0..<arr.count{
        for j in 0..<arr[i].count{
            if arr[i][j] == arr[j][i]{
                result = 1
                continue
            }else{
                return 0
            }
            
        }
        
    }
    
    return result
}