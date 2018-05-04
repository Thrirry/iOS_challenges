import Foundation



// challegen 1
/*
let firstName = "Matt"

if firstName == "Matt" {
    let lastName = "Galloway"
} else if firstName == "Ray"{
    let lastName = "Wenderlich"
}
let fullName = firstName + " " + lastName
 */
// This code above wrong, cause "lastName" declared inner if statement so can't use outside


// challegen 2
/*
let answer1 = true && true     //T
let answer2 = false || false   //F
let answer3 = (true && 1 != 2) || (4 > 3 && 100 < 1)  //T
let answer4 = ((10 / 2) > 3) && ((10 % 2) == 0)  //F
*/


// challegen 3
let curPosition = (row: 4, column: 5) //test current row/column number
var nextPosition = (row: curPosition.row, column: curPosition.column)

nextPosition.column += 1
if nextPosition.column > 7 {
    nextPosition.column = 0
    nextPosition.row += 1
    
    if nextPosition.row > 7 {
        nextPosition.row = 0
    }
}
print("The next position is row \(nextPosition.row) and column \(nextPosition.column)")



// challegen 5
let month = "fed"
let year: Int = 2019
var daysInthemonth = 0

if month == "jan" || month == "mar" || month == "may" || month == "jul" || month == "aug" || month == "october" || month == "dec" {
    daysInthemonth = 31
}else if month == "fed"{
    if (year % 4 == 0 && !(year % 100 == 0) ) || year % 400 == 0 {
        daysInthemonth = 28
    }else {
        daysInthemonth = 29
    }
}else{
    daysInthemonth = 30
}
print("\(month) in \(year) has \(daysInthemonth) days")



// challegen 6
let number = 16.0
let logarithm = log2(number)

if logarithm == floor(logarithm){ //floor: take a Double and returns another Double
    print("\(number) is a power of 2")
}else{
    print("\(number) isn't a power of 2")
}



// challegen 7
var num = 1
print("This is 10st numbers power of 2: ")
while num <= 10 {
    print("\(pow(2, Double(num)))")
    num += 1
}


// challegens 8
let n = 8
var fibonacci = [1,1]
while fibonacci.count < n {
    fibonacci.append(fibonacci[fibonacci.count-1] + fibonacci[fibonacci.count-2])
}
print("The next value of fibonacci number is: \(fibonacci[n-1])")
print("\(fibonacci.count)")



// challegen 9
let facto = 4
var res = 1
var count = 1

while count <= facto {
    res *= count
    count += 1
}
print("The factorials of \(facto) is \(res)")

















