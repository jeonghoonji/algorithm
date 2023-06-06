let input = Int(readLine()!)!
var studentList : [String] = [] 
var result : Int = 0

for _ in 0..<input{
    let str = String(readLine()!)
    studentList.append(str)
}

let length = studentList[0].count   

for i in (0..<length).reversed(){   
    var temp = Set<String>()        
    for j in studentList{
        let startIndex = j.index(j.startIndex, offsetBy: i)     
        let endIndex = j.index(j.startIndex, offsetBy: length - 1)  
        let subString = j[startIndex...endIndex]
        temp.insert(String(subString))
    }
    if temp.count == studentList.count{
        result = length - i     
        break
    }
}
print(result)