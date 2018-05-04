//: Playground - noun: a place where people can play

import Cocoa



// Challenge A: Repeating yourself
func repeatTask(times: Int, task: () -> Void){
    for _ in 0..<times{
        task()
    }
}
var task = {
    print("Swift Apprentice is an amazing book!")
}
repeatTask(times: 10, task: task)

// Shorthand:
repeatTask(times: 10){
    print("Swift Apprentice is a great book!")
}



// Challenge B: Closure sum
func mathSum(lenght: Int, series: (Int) -> Int) -> Int{
    var sum = 0
    
    for start in 1...lenght {
        sum += series(start)
    }
    return sum
}

// -- Resquest1:
let sum = { (_ numbers: Int) in numbers * numbers}
mathSum(lenght: 10, series: sum)

// Shorthand:
mathSum(lenght: 10){ numbers in
    numbers * numbers
}

// -- Resquest2:
func fino(_ number: Int) -> Int {
    if number <= 0 {
        return 0
    }else if number == 1 || number == 2 {
        return 1
    }else{
        return fino(number - 1) + fino(number - 2)
    }
}

mathSum(lenght: 10, series: fino)




// Challenge C: Functional ratings
let appRating = [
    "Calendar pro": [1, 5, 5, 4, 2, 1, 5, 4],
    "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
    "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
]
// Calculate the average
var averageRatings: [String: Double] = [:]
appRating.forEach {
    let result = $0.value.reduce(0, {
        $0 + $1
    })
    averageRatings[$0.key] = Double(result) / Double($0.value.count)
}
print(averageRatings)
// Use filter and map to show avarege is greater than 3
let greater = averageRatings.filter{ $0.value > 3 }.map{ $0.key}
print(greater)










