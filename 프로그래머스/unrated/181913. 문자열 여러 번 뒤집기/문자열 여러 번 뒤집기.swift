import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var result = Array(my_string)

    for j in queries {
        
        var start = j[0]
        var end = j[1]

        while start < end {
            let temp = result[start]
            result[start] = result[end]
            result[end] = temp

            start += 1
            end -= 1
        }
    }

    return String(result)
}


