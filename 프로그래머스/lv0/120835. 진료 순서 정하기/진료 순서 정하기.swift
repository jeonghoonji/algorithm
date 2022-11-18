import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var arr : [Int] = []
    var index : Int = 0
    
    for i in emergency{

        for j in emergency.sorted(){
            if i <= j {
                arr.append(emergency.count - index)
                break
            }else{
                index += 1
            }
        }
        index = 0
    }
    return arr
}


