import UIKit


// challegen 3
let curPosition = (row: 4, column: 5)
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
let month = "jan"
let year = 2018
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
print("\(month) has \(daysInthemonth) days")



// challegen 6
let number = 8.0
let logarithm = log2(number)

if logarithm == floor(logarithm){
    print("\(number) is a power of 2")
}else{
    print("\(number) isn't a power of 2")
}



// challegen 7
var num = 1
while num <= 10 {
    print("This is 10st numbers power of 2: \(pow(2, Double(num)))")
    num += 1
}



// challegen 9
let facto = 4
var res = 1
var count = 1

while count <= facto {
    res *= count
    count += 1
}
print("The factorial of \(facto) is \(res)")

















