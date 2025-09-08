import Foundation

struct UserModel  : Equatable {
    let name : String
    var isPremium : Bool



    // mutating func changePlanToPremium() {
    //     self.isPremium = true
    // }

   init() {
    self.name = "Unknown"
    self.isPremium = false
    print("Constructor is Calling")
}

    init(name:String , isPremium : Bool){
        self.name = name 
        self.isPremium = isPremium
    }
    
}

// print(u)    // UserModel(name: "", isPremium: false)

var u = UserModel(name:"Preet" , isPremium:true)
// u.changePlanToPremium()    // true --> false 

// print(u)    // print with true 
// print(u1)  // emprty Object 


// var u1 = UserModel(name:"Preet" , isPremium:true)
// u1.changePlanToPremium()   /// false --> true 

print(u)   ///// true
// print(u1)  ///// true 

// print(u1 == u)

// u.isPremium = false
// print(u)  









var z : String {
    return "Helllo"
}

print(z)



// var v = z
// print(v)
// z = z + "ghfd"
// v = v + "sfsdfsd" 
// print(v)
// print(z)