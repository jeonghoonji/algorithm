let N = Int(readLine()!)!

var temp : Int = N
var turn : Bool = true

while temp != 0 {
    let randomNum = Int.random(in: 0...1)
    if turn{
        turn.toggle()
        temp = minusStone(random: randomNum, temp: temp)
        
    }else{
        turn.toggle()
        temp = minusStone(random: randomNum, temp: temp)
    }
}
print(turn ? "CY" : "SK")

func minusStone(random: Int, temp : Int) -> Int{
    var returnTemp : Int = temp
    if returnTemp > 2 && random == 1 {
        returnTemp = returnTemp - 3
    }else{
        returnTemp = returnTemp - 1
    }
    return returnTemp
}