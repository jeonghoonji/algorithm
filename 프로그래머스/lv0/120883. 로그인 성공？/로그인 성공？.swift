import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    var id : String = id_pw[0]
    var pw : String = id_pw[1]
    for j in db{
        if id == j[0]{
            if pw == j[1] {
                return "login"       
            }else{
                return "wrong pw"
            }   
        }
    }    
    return "fail"
}