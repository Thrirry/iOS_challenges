//: Playground - noun: a place where people can play

import Cocoa


// Challenge 2
func swappingValuesForKeys <T, U>(_ dictionary: Dictionary<U, T>) -> Dictionary<T, U> {
    
    let arrayOfValues: [T] = Array(dictionary.values)
    let arrayOfKeys: [U] = Array(dictionary.keys)
    var newDictionary: [T: U] = [:]
    
    for i in 0...arrayOfValues.count-1 {
        newDictionary[arrayOfValues[i]] = arrayOfKeys[i]
    }
    return newDictionary
}

var address = ["Country":"VN", "City":"DaNang"]
swappingValuesForKeys(address)
//func swappingValuesForKeys(_ key1: String, _ key2: String, in dictionary: [String: Int] )  -> [String: Int] {
//}



// Challenge 3
let random = ["NY": "New York", "CA": "California"]
func namesLongerThanEight( _ dictionary: [String: String]){
    
    for (_, address) in dictionary where address.count > 8 {
        print(address)
    }
}
namesLongerThanEight(random)



// Challenge 4
func merging (_ dict1: [String: String], with dict2: [String: String]) -> [String: String]{
    
    var dict3 = dict1
    for(key, value) in dict2 {
        dict3[key] = value
    }
    return dict3
}
let companies1 = ["AAPL" : "Apple Inc", "GOOG" : "Google Inc", "AMZN" : "Amazon.com, Inc", "FB" : "Facebook Inc"]
let companies2 = ["INS" : "Facebook Inc", "FB" : "Facebook Inc"]
print(merging(companies1, with: companies2))



// Challenge 6
func isInvertible(_ dictionary: [String: Int]) -> Bool {
    var array: Set<String> = []
    
    for (value ,_) in dictionary {
        array.insert(value)
    }
    return dictionary.count == array.count
}
isInvertible(["INS" : 1, "FB" : 2])    // it's true
//isInvertible(["FB" : 1, "FB" : 2])       // it's false



// Challenge 8
func printSortedKeysAndValues(_ input: [String: Int16]) {
    let sortedKeys = input.sorted(by: { $0.1 < $1.1 })
    print(sortedKeys)
}
let input = ["A" : Int16(101), "B" : Int16(5), "C" : Int16(2), "D" : Int16(100)]
printSortedKeysAndValues(input)



// Challenge 9
var nameTitleLookup: [String: String?] = ["Mary": "Engineer", "Patrick": "Intern", "Ray": "Hacker"]
nameTitleLookup.removeValue(forKey: "Ray")
nameTitleLookup.updateValue(nil, forKey: "Patrick")
print(nameTitleLookup)















