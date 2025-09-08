import Foundation

extension Employee {
    public func display() {
        print("Eid: \(eid), Ename: \(ename)")
    }
}
// Model
struct Employee: Equatable {
    private(set) var eid: Int = 0
    private(set) var ename: String = ""
    mutating func setEid(_ eid: Int) {
        self.eid = eid
    }

    mutating func setEname(_ ename: String) {
        self.ename = ename
    }
}

// Interface
protocol EmployeeAddProtocol{
    func addRecord(e: Employee) -> String
}
protocol EmployeeUpdateProtocol{
    func updateRecord(e: Employee) -> String
}
protocol EmployeeUpdateProtocol{
    func updateRecord(e: Employee) -> String
}
protocol EmployeeViewProtocol{
    func readRecord() -> [Employee]
}

protocol EmployeeSearchProtocol{
    func findRecordById(_ eid: Int) -> Employee?
}


protocol EmployeeProtocol: EmployeeAddProtocol,
                           EmployeeUpdateProtocol,
                           EmployeeViewProtocol,
                           EmployeeSearchProtocol {
}

// Repository
class EmployeeRepo: EmployeeProtocol {
    private var empList: [Employee] = []

    init() {
        // Add one dummy employee
        var emp = Employee()
        emp.setEid(101)
        emp.setEname("Preeti")
        print(addRecord(e: emp))
    }

    func readRecord() -> [Employee] {
        return empList.sorted(by:{ $0.eid > $1.eid })
    }

    func findRecordById(_ eid: Int) -> Employee? {
        if let employee = empList.first(where: { $0.eid == eid }) {
            return employee
        }
        return nil
    }

    func addRecord(e: Employee) -> String {
        if let existing = findRecordById(e.eid) {
            print("Duplicate Record Found:")
            existing.display()
            return "Duplicate Record Found Exception"
        }
        empList.append(e)
        return "Record is Added Successfully"
    }

    func deleteRecord(eid: Int) -> String {
        if let index = empList.firstIndex(where: { $0.eid == eid }) {
            empList.remove(at: index)
            return "Record with Eid \(eid) is Deleted!"
        }
        return "No Record Found with Eid \(eid)"
    }

    func updateRecord(e: Employee) -> String {
        if let index = empList.firstIndex(where: { $0.eid == e.eid }) {
            empList[index] = e
            return "Record with Eid \(e.eid) is Updated!"
        }
        return "No Record Found with Eid \(e.eid)"
    }
}

// View Layer
var empRepo: EmployeeProtocol = EmployeeRepo()
var option = 0

func readInt(prompt: String) -> Int {
    print(prompt, terminator: ": ")
    return Int(readLine() ?? "") ?? 0
}

func readString(prompt: String) -> String {
    print(prompt, terminator: ": ")
    return readLine() ?? ""
}

while option != 7 {
    print("""
    
    ==== Employee Management ====
    1. Add Record
    2. See All Records
    3. Delete Record
    4. Find Record by Eid
    5. Update Record
    7. Quit
    Enter Option
    """, terminator: " ")

    option = Int(readLine() ?? "") ?? 7

    switch option {
    case 1:
        print("Add Record")
        let eid = readInt(prompt: "Enter Employee ID")
        let ename = readString(prompt: "Enter Employee Name")
        var emp = Employee()
        emp.setEid(eid)
        emp.setEname(ename)
        print(empRepo.addRecord(e: emp))

    case 2:
        print("See All Records")
        let employees = empRepo.readRecord()
        if employees.isEmpty {
            print("No Records Found")
        } else {
            for employee in employees {
                employee.display()
            }
        }

    case 3:
        print("Delete Record")
        let eid = readInt(prompt: "Enter Employee ID to Delete")
        print(empRepo.deleteRecord(eid: eid))

    case 4:
        print("Find Record by Eid")
        let eid = readInt(prompt: "Enter Employee ID to Find")
        if let emp = empRepo.findRecordById(eid) {
            emp.display()
        } else {
            print("No Record Found with Eid \(eid)")
        }

    case 5:
        print("Update Record")
        let eid = readInt(prompt: "Enter Employee ID to Update")
        let ename = readString(prompt: "Enter New Employee Name")
        var emp = Employee()
        emp.setEid(eid)
        emp.setEname(ename)
        print(empRepo.updateRecord(e: emp))

    case 7:
        print("Quit")

    default:
        print("Invalid Option")
    }
}

