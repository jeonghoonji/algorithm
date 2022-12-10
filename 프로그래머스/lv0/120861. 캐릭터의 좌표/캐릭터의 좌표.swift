import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    
    var result : [Int] = [0,0]
    
    var maxX : Int = board[0] / 2
    var maxY : Int = board[1] / 2

    for i in keyinput{
        switch i {
        case "left":
            if -maxX == result[0]{
                break
            }
            result[0] -= 1
        case "right":
            if maxX == result[0]{
                break
            }
            result[0] += 1
        case "up":
            if maxY == result[1]{
                break
            }
            result[1] += 1  
        case "down": 
            if ( -maxY == result[1]){
                break
            }
            result[1] -= 1    
        default:
            return []
        }
    }
   
    return result
}