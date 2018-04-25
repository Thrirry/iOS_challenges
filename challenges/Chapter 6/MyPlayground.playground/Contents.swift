//: Playground - noun: a place where people can play

import Foundation



// Function as variables
func add(_ a: Int, _ b: Int) -> Int{
    return a + b
}

func div(_ c:Int, _ d:Int) -> Int{
    return c - d
}

var function = add
function(4,5)

func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b:Int ){
    let result = function(a, b)
    print(result)
}
printResult(div, 7, 10)
printResult(add, 3, 5)



// challegens A: Looping with stride functions
for index in stride(from: 10, to: 22, by: 4 ){
    print(index)
}
print("\n")

for index2 in stride(from: 10, through: 22, by: 4){
    print(index2)
}
print("\n")

for index3 in stride(from: 10.0, through: 9.0, by: -0.1) {
    print(index3)
}



// challegen B: It's prime time
func isNumberDivisible (_ number: Int, by division: Int) -> Bool{
    if number % division == 0 {
        return true
    }else {
        return false
    }
}

func isPrime(_ number: Int) -> Bool {
    
    if number <= 1 {
        return false
    }
    for division in 2..<number {
        if isNumberDivisible(number, by: division){
            return false
        }
    }
    return true
}
isPrime(13)




// challenges C: Recursive
func fibonacci(_ number: Int) -> Int {
    if number < 0 {
        return 0
    }else if number == 2 || number == 1 {
        return 1
    }else {
        return fibonacci(number - 1) + fibonacci(number - 2)
    }
}
fibonacci(10)
fibonacci(5)
fibonacci(2)

















