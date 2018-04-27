//: Playground - noun: a place where people can play

import Cocoa


// Challenge 1
let array1 = [Int]()
//let array2 = []             //Invalid: Empty collection
let array3: [String] = []



// Challenge 2
func removeOnce(_ item: Int, from array: [Int]) -> [Int]{
    
    var result = array
    guard let location = result.index(of: item) else {
        return array
    }
    result.remove(at: location)
    return result
}

removeOnce(6, from: [1,2,3,4,5,5])



// Challenge 3
func removing(_ item: Int, from array: [Int]) -> [Int] {
    
    var result = array
    
    while let location = result.index(of: item){
        result.remove(at: location)
    }
    return result
}
removing(4, from: [1,4,4,4,7,8,10])




// Challenge 4
func reversed(_ array: [Int]) -> [Int] {
    var invert: [Int] = []
    
    for location in stride(from: array.count - 1, through: 0, by: -1){
        invert.append(array[location])
    }
    return invert
}
print(reversed([2,4,5,7,3]))

//for countdown in stride(from: 3, through: 1, by: -1) {
//    print("\(countdown)...")
//}



// Challenge 5
func randomFromZero(to number: Int) -> Int {
    return Int(arc4random_uniform(UInt32(number)))
}

func randomized(_ array: [Int]) -> [Int] {
    var subs = array
    var random: [Int] = []
    
    while subs.count > 0 {
        random.append(subs.remove(at: randomFromZero(to: subs.count - 1)))
    }
    
    return random
}
randomized([2,3,4,5,6,7])



// Challenge 6
func minMax(of array: [Int]) -> (min: Int, max:Int)? {
    
    var min: Int?
    var max: Int?
    
    if array.count == 0 {
        return nil
    }
    
    for location in 0..<array.count {
        if min == nil || min! > array[location] {
            min = array[location]
        }
        
        if max == nil || max! < array[location] {
            max = array[location]
        }
    }
    
    return (min: min!, max: max!)
}
minMax(of: [0,3,5,6,8,17])




























