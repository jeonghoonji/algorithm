func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    var count : Int = 0
    var str : String = ""
    
    func makeMap(arr: [Int]) -> [Int]{
        var mapArr : [Int] = []
        for i in arr{
            var tempArr : [Int] = []
            var share : Int = i
            var remain : Int = 0
            
            while share != 0{
                remain = share % 2
                share = share / 2
                tempArr.append(remain)
            }
            
            if tempArr.count < n {
                for _ in 0..<n - tempArr.count{
                    tempArr.append(0)
                }
            }
            
            tempArr = tempArr.reversed()

            mapArr.append(contentsOf: tempArr)
            
        }
        return mapArr
    }
    
    for (arr1,arr2) in zip(makeMap(arr: arr1), makeMap(arr: arr2)){
        count += 1
        if arr1 == 1 || arr2 == 1 {
            str += "#"
        }else{
            str += " "
        }
        if count == n {
            answer.append(str)
            count = 0
            str = ""
        }
    }
    return answer
}