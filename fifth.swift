import Foundation


class Person {
    let name : String
    var age  : Int

    init(){
        name = "preet"
        age = 44 
    }

    func changeAge(_ age : Int){
        self.age = age 
    }

}



var p :Person = Person()
print(p.age)


var p1 = Person()
p1.changeAge(55)
print(p1.age)
print(p.age)

print(ObjectIdentifier(p))
print(ObjectIdentifier(p1))




// print (cx)

// var cx : Int