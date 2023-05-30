import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    
    var check : [Character:Int] = [:]
    var result : String = ""
    
     func getScore(_ number: Int) -> Int{
        switch number{
        case 1,7:
            return 3
        case 2,6:
            return 2
        case 3,5:
            return 1
        default:
            return 0
        }
    }
    
    func makePersonalityType(){
        
        if check["T"] ?? 0 > check["R"] ?? 0{
            result += "T"
        }else if check["T"] == check["R"]{
            result += "R"
        }
        else{
            result += "R"
        }
        
        if check["C"] ?? 0 > check["F"] ?? 0{
            result += "C"
        }else if check["C"] == check["F"]{
            result += "C"
        }
        else{
            result += "F"
        }
        
        if check["J"] ?? 0 > check["M"] ?? 0{
            result += "J"
        }else if check["J"] == check["M"]{
            result += "J"
        }
        else{
            result += "M"
        }
        
        if check["A"] ?? 0 > check["N"] ?? 0{
            result += "A"
        }else if check["A"] == check["N"]{
            result += "A"
        }
        else{
            result += "N"
        }
    }
    
    
    for (number,survey) in zip(choices,survey){

        if number <= 7 && number >= 5 {
            
            if let temp = check[survey.last ?? " "]{
                check[survey.last ?? " "] = temp + getScore(number)
            }else{
                check[survey.last ?? " "] = getScore(number)
            }
            
        }else if number == 4 {
            
            continue
            
        }else{
            
            if let temp = check[survey.first ?? " "]{
                check[survey.first ?? " "] = temp + getScore(number)
            }else{
                check[survey.first ?? " "] = getScore(number)
            }
        }
    }
    
 
    makePersonalityType()
  
    return result
}