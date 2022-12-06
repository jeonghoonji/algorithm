import Foundation

func solution(_ sides:[Int]) -> Int {
    var count : Int = 0
    var sortArray : [Int] = sides.sorted()
  
    for i in (sortArray[1]-sortArray[0]+1)...sortArray[1]{
        count += 1
    }
    for j in (sortArray[1]+1)..<(sortArray[0] + sortArray[1]){
        count += 1

    } 

    return count
}