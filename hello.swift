// import Foundation
// print("Hello")


// var a = "preet"
// let b = "preeti"


// c = "ramkli"

// a = b 

// print(a)
// print(c)

// let arr = ["Hello" , "my" , "name" , "is :"]
// arr.append("Geee")

// print(arr)


// import Foundation

// var arr = ["Hello" , "my" , "name" , "is :"]

// var arr1 = NSMutableArray(
// array:arr
// );

// arr.append("Geee")

// print(arr1)





import Foundation 
func abc () -> String {
    let a:String? = "preet"
guard let x : String = a else { 
    print("False Statement")
    return "No value Found"
}

return x

}
print("Hello : \(abc())")

let a = 5 
var b = a 
print(b)
