import Foundation

func solution(_ n:Int) -> Int {
    var result : Int = 0
    for i in 1...n{
       if n % i == 0{
           if i * i == n{
               result += 1
               continue
           }
           result += 1
       }
        
    } 
    return result
}

// for i in 1...n {
//        for j in stride(from: n , through: 1, by:-1){
//            if i * j == n{
//                result += 1
//            }
//        }
//     }