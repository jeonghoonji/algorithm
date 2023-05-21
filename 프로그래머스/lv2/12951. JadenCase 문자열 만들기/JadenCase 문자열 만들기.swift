func solution(_ s:String) -> String {
    
    var arr = Array(s.map { String($0.lowercased()) })
        
    for i in 0..<arr.count{
        
        if Int(arr[i]) != nil{
            continue
        }else if i == 0 {
            arr[i] = arr[i].uppercased()
        }
        
        if i + 1 < arr.count {
            if arr[i] == " " && arr[i+1] != " " {            
                arr[i+1] = arr[i+1].uppercased()
            }
        }
    }

    return arr.joined()
}