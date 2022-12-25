func solution(_ phone_number:String) -> String {
    
    var phone_numberArr : [String] = []
    var result : String = ""
    
    for i in Array(phone_number){
        phone_numberArr.append(String(i))
    } 
    for i in 0..<phone_numberArr.count{
        if i < Array(phone_numberArr).count - 4 {
            result += "*"
            continue
        }
        result += phone_numberArr[i]
    }
    
    return result
}
