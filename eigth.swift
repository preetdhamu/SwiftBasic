import Foundation

struct Student {
    var rollNo : Int ;
    var name : String ;
}


var listOfStudents : [Student] = [
    Student(rollNo: 121, name: "areet"),
    Student(rollNo: 262, name: "zavi"),
    Student(rollNo: 223, name: "fahul"),
    Student(rollNo: 104, name: "bhor"),
    Student(rollNo: 005, name: "chor"),
]

// for _ in 0..<2 {

//     let newRollNo: Int = Int(readLine() ?? "") ?? 0
//     let newName: String = readLine() ?? ""
//     let newStudent : Student = Student(rollNo : newRollNo , name : newName)

//     listOfStudents.append(newStudent)
// }


var listOfStudentsWhoseNameStartsFromR:[Student] = listOfStudents.filter{student in 
    student.name.lowercased().hasPrefix("r")
}


// print(listOfStudentsWhoseNameStartsFromR)



//sorted by roll no 
var listOfStudentsSortedByRollNo : [Student] = listOfStudents.sorted(by:{$0.rollNo < $1.rollNo})
print(listOfStudentsSortedByRollNo)

// var listOfStudentsSortedByRollNo: [Student] = listOfStudents.sorted { student1, student2 in
//     return student1.rollNo < student2.rollNo
// }

// print(listOfStudentsSortedByRollNo)


var listOfStudentSortedByName : [Student] = listOfStudents.sorted{ studnet1, student2 in
    return studnet1.name < student2.name;
}

print(listOfStudentSortedByName)

