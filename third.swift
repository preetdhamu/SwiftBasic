import Foundation


func getUserData() -> (username:String , userId : Int){
    let userName : String = "Preet"
    let userId : Int = 55
    return (userName , userId)
}

func printUserData( _ info : (username : String , userId : Int)){
    
    print("Name and Id : \(info.username)  and \(info.userId)")
}


var userData = getUserData()

printUserData(userData)

