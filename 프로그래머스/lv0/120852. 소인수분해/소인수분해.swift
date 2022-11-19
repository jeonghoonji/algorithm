import Foundation

func solution(_ n:Int) -> [Int] {
    var arr : [Int] = []
    var temp : Int = n
    var num : Int = 2
    
    while true{
        if temp == 1 {
            break
        }
        
        if (temp % num) == 0{
            temp = temp / num
            if !arr.contains(num){
                arr.append(num)
            }
    
            continue
        }else{
            num += 1
        }
    
    }
    
    
    
    return arr
}


