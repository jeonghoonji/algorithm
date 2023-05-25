func solution(_ num:Int) -> Int {
    
    var count : Int = 0
    var temp : Int = num
    while count < 500{
        if temp == 1{
            break
        }
        if temp % 2 == 0 {
            temp = temp / 2
        }else{
            temp = (temp * 3) + 1
        }
        count += 1
    }
    if count == 500 {
        return -1
    }
    return count
}