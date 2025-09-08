import Foundation 

let name : String = "Preet"
let count : Float = 6


print("Hello \(name) , Your Total Hair Count is : \(count)")



for i in 0..<10{
    print(i)
}


var arr = [1,2,3,4,5,6,7,8,9,10]

var newEvenNumber = arr.filter { $0 % 2 == 0
}


var newEvenNumbers = arr.map{
    x in return x + 1 
}

print(newEvenNumbers) 
