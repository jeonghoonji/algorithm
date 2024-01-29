import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
  
    var index1 : Int = 0
    var index2 : Int = 0
    
    for i in 0..<goal.count{
        if goal[i] == cards1[index1]{
            if cards1.count-1 > index1{
                index1 += 1    
                continue
            }
        }else if goal[i] == cards2[index2]{
            if cards2.count-1 > index2{
                index2 += 1
                continue
            }
        }else{
            return "No"
        }
    }    
    return "Yes"
}

