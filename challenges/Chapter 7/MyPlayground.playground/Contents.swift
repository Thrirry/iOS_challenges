//: Playground - noun: a place where people can play

import Cocoa

func calculateNumbersOfShape (shape: String ) -> Int? {
    
    switch shape {
    case "Triangle":
        return 3
    case "Square":
        return 4
    case "Rectanglr":
        return 5
    case "Pentagon":
        return 5
    case "Hexagon":
        return 6
    default:
        return nil
    }
    
}

// Optional Binding: if-let
func ifHasSides(shape: String) {
    let sides = calculateNumbersOfShape(shape: shape)
    if let sides = sides {
        print("A \(shape) has a \(sides) side")
    }else{
        print("The side of a \(shape) shape don't know the number")
    }
}

// Optional Binding: guard-let
func maybeHasSides(shape: String) {
    guard let sides = calculateNumbersOfShape(shape: shape) else {
        print("The side of a \(shape) shape don't know the number")
        return
    }
    print("A \(shape) has a \(sides) side")
}

ifHasSides(shape: "Hexagon")
maybeHasSides(shape: "Circle")



// Nil-Coalescing

// NC -first
let imagePaths = ["star": "/img/star.png",
                  "portrait": "/img/portrait.png",
                  "spacer": "/img/shared/spacer.jpg"]

let defaultImgPath = "/img/default.png"
let avatarImg = imagePaths["spacer"] ?? defaultImgPath

//if let isPNG = imagePaths["star"]?.hasSuffix(".png"){
//    print("The spacer img is in PNG format")
//}
print(avatarImg)


// NC -second
var imgId: Int? = nil
var mustHaveId = imgId ?? 0
print(mustHaveId)

// NC -third
let shapePath = imagePaths["star"] ?? imagePaths["rectangle"] ?? defaultImgPath
print(shapePath)





// CHALLENGES

// Challenge A: Divide and conquer
var name: String? = "Ray"
//var age: Int = nill       //False: Nil can't initialize with "String" type.
let distance: Float = 27.7
var middleName: String? = nil



// Challenge B: Divide and conquer
func divideIfWhole(_ value: Int,by divisor: Int) -> Int? {
    
    let result = value % divisor
    if result != 0 {
        return nil
    }else{
        return value / divisor
    }
}

if let result = divideIfWhole(10, by: 3) {
    print("Yep, it divides \(result) time")
}else{
    print("Not divisible")
}



// Challenge C: Refactor and reduce
let resultC = divideIfWhole(10, by: 2) ?? 0
print("It divides \(resultC) time")



// Challenge D: Nested optional
let number: Int??? = 20

// question 1
print(number!!!)

// question 2
if let number = number {
    print(number)
}

// question 3
func printNumber(_ number: Int???){
    guard let result = number else {
        return
    }
    print(result!!)
}
printNumber(12)




















