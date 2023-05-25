var array : [String] = []
for _ in 0..<3{
    let str = readLine()!
    array.append(str)
}

var str : String = transNumber(str:array[0]).0 + transNumber(str:array[1]).0

print(Int(str)! * transNumber(str:array[2]).1)
 
func transNumber(str: String) -> (String,Int){
    switch str{
    case "black":
        return ("0",1)
    case "brown":
        return ("1",10)
    case "red":
        return ("2",100)
    case "orange":
        return ("3",1000)
    case "yellow":
        return ("4",10000)
    case "green":
        return ("5",100000)
    case "blue":
        return ("6",1000000)
    case "violet":
        return ("7",10000000)
    case "grey":
        return ("8",100000000)
    case "white":
        return ("9",1000000000)
    default:
        return ("0",0)
    }
}
