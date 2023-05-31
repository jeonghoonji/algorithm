import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {

    var recordsByCar : [String: [(String,String)] ] = [:]
    var result : [Int] = []
    
    for i in records{
        let input = i.split(separator: " ").map{ String($0) }
        
        let time = input[0]
        let carNumber = input[1]
        let state = input[2]
        
        if var temp = recordsByCar[carNumber]{
            temp.append(( time , state))
            recordsByCar[carNumber] = temp
        }else{
            recordsByCar[carNumber] = [ (time , state) ]
        }

    }
    
    let sortedRecordsByCar = recordsByCar.sorted(by: {$0.key < $1.key})
    
    
    for i in sortedRecordsByCar{
        result.append(payMoney(time: timeCalculating(i.value), fees: fees))
        
    }

    return result
}

func timeCalculating(_ arr : [(String,String)]) -> Int{
    var time : Int = 0
    let maxTime = (23 * 60) + 59
    var startTime : Int = 0

    for i in arr{
        let sliceNumber = (i.0).split(separator: ":")
        if i == arr.last! && i.1 == "IN"{
            time += maxTime - ( Int(sliceNumber[0])! * 60 + Int(sliceNumber[1])! )
            continue
        }
        if i.1 == "IN"{
            startTime = ( Int(sliceNumber[0])! * 60 + Int(sliceNumber[1])! )
        }else{
            time += ( Int(sliceNumber[0])! * 60 + Int(sliceNumber[1])! ) - startTime
            startTime = 0
        }

    }

    return time
}

func payMoney(time : Int , fees: [Int]) -> Int{
    if time <= fees[0]{
        return fees[1]
    }else {
        let timeToPay = time - fees[0]
        var unit = timeToPay / fees[2]
        if timeToPay % fees[2] != 0 {
            unit += 1
        }
        return fees[1] + (unit * fees[3])
    }
}