//: Playground - noun: a place where people can play

import Foundation



// challegen 1
var sum = 0
for i in 0...5 {
    sum += i
}
print(sum)



// challegen 2
var aLotOfAs = ""
while aLotOfAs.count < 10 {
    aLotOfAs += "a"
}
print(aLotOfAs.count)



// challegen 3

//let coordinates = (1,0,5)
let coordinates = (2, 2, 2)
//let coordinates = (3, 3, 0)

switch coordinates {
case let (x,y,z) where x == y && y == z:
    print("x=y=z")
case (_, _, 0):
    print("on the x/y plane")
case(_, 0 ,_):
    print("on the x/z plane")
case(0, _, _):
    print("on the y/z plane")
default:
    print("Nothing special")
}



// challegen 4
print("The closed range must always be increasing and the second number must always be greater than or equal to the first")



// challegen 5
var coundownt = 10
while coundownt >= 0 {
    print("\(coundownt)")
    coundownt -= 1
}


// challegen 6
var number = 0.0
for number in 0...10 {
    print("\(Double(number)/10)")
}







