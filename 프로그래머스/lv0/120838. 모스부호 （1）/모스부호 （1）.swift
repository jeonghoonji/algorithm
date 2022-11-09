import Foundation

func solution(_ letter:String) -> String {
   let morse = [ ".-" : "a","-..." : "b", "-.-." : "c", "-.." : "d",
            "." : "e","..-." : "f", "--." : "g", "...." : "h", ".." : "i",
            ".---" : "j", "-.-" : "k", ".-.." : "l", "--" : "m", "-." : "n",
            "---" : "o", ".--." : "p", "--.-" : "q", ".-." : "r", "..." : "s",
            "-" : "t", "..-" : "u", "...-" : "v", ".--" : "w", "-..-" : "x",
            "-.--" : "y", "--.." : "z"
               ]
    let word = letter.components(separatedBy:" ")
    var str : String = ""
    
    for i in word{
        for (key,value) in morse{
            if i == key{
                str += value
            }
        }
    }
  

    
    return str
}

