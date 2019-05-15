// let user = "Tom"

// if (user === "Tom") {
//   console.log("Hello Tom")
// } else {
//   console.log("Hello someone other than Tom")
// }

// let age = prompt("What is your age?")

// if (age >= 18) {
//   alert("Welcome to the casino!")
// } else {
//   alert("You're too young to enter the casino.")
// }

let students = []
for (let index = 0; index < 3; index++) {
  let student = {}
  student.name = prompt("Enter a student's name.")
  student.age = prompt("Enter a student's name.")
  students.push(student)
}
alert(students)