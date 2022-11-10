import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var doubleArr : [[Int]] = []
    var arr : [Int] = []

    var count = num_list.count / n

    for i in stride(from:0, to:num_list.count, by:n){
        
        
        for j in i..<i+n{
            arr.append(num_list[j])
        }

        doubleArr.append(arr)
        arr.removeAll()

    }

    return doubleArr
}

