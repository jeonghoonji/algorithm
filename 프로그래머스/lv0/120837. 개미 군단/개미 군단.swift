import Foundation

func solution(_ hp:Int) -> Int {
    var count : Int = 0
    var remainder : Int = 0
    
    count = hp / 5
    remainder = hp % 5
    
    count += remainder / 3
    remainder %= 3
    
    count += remainder / 1
    
    return count
}


