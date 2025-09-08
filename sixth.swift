import Foundation

enum CarModel {
    case honda , audi , bmw 

    var getValue: String {
        switch self {
        case .honda:
            return "Honda"
        case .audi:
            return "Audi"
        case .bmw:
            return "BMW"
       
        }
    }
}

struct Car {
    var modelNo : Int
    private(set) var model : CarModel

    // init methods are already mader automaticaallyy


    func displayCarInfo() {
        print("Car : \(modelNo) + \(model)")
    }
    
    mutating func changeModel(newModel : CarModel){
        model = newModel
    }



}


class Customer {
    public var firstCar : Car = Car(modelNo : 101 , model : .honda)

    private var secondCar : Car = Car(modelNo : 102 , model : .bmw)

    private(set) var thirdCar : Car = Car(modelNo : 103 , model : .audi)



    //// we need to make the init by my own else give the Value at the time of initialization 

    func changeThirdCarModel(newModel : CarModel){
        thirdCar.changeModel(newModel : newModel)
    }


    

}


var preetCust : Customer = Customer()

// Public
preetCust.firstCar.displayCarInfo()

preetCust.firstCar.changeModel(newModel : .honda )

preetCust.firstCar.displayCarInfo()


// private 
// preetCust.secondCar.displayCarInfo()

// preetCust.secondCar.changeModel(newModel : .audi )

// preetCust.secondCar.displayCarInfo()


// private(set)

preetCust.thirdCar.displayCarInfo()

preetCust.changeThirdCarModel(newModel : .bmw )

preetCust.thirdCar.displayCarInfo()

