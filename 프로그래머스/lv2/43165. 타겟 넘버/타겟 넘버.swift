import Foundation

func solution(_ numbers: [Int], _ target: Int) -> Int {
    var result: Int = 0
    var stack: [(index: Int, sum: Int)] = [(0, 0)]

    while !stack.isEmpty {
        
        let current = stack.removeLast()
        let index = current.index
        let sum = current.sum

        if index == numbers.count {
            if sum == target {
                result += 1
            }
        } else {
            stack.append((index + 1, sum + numbers[index]))
            stack.append((index + 1, sum - numbers[index]))
        }
    }

    return result
}