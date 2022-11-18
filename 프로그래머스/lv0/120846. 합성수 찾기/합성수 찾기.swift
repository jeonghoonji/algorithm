import Foundation

func solution(_ n:Int) -> Int {
    var count : Int = 0
    var isPrime : Int = 0
    for i in 1...n{
    
        for j in 1...i{ 
            if i % j == 0{
                isPrime += 1
            }
            
        }

        if isPrime == 2 || isPrime == 1{
            count += 1
        }
        isPrime = 0
        
    }
    return n - count 
}



