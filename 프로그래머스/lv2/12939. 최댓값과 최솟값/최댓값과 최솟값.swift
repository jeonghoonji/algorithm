func solution(_ s:String) -> String {
    
    let arr = s.split(separator: " ").map { Int(String($0))!}.sorted()
    return String(arr.first!) + " " + String(arr.last!)   
}