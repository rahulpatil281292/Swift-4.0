//: Playground - noun: a place where people can play

import UIKit


// Section 2.1 : Creating a Variables

var nonConstantnumber : Int = 8
nonConstantnumber = 20

let constantNumber : Int = 10

// Swift infer type of variables, so you dont need to specifie explicitly

let ten = 10 // ten is an Int
let pii = 3.14 // pi is Double
let flaotPi : Float = 3.14 // floatPi is Float
// implicity declarating decimal variable is double


// Section 2.2 : Property Observer

var myProperty = 5 {
    willSet {
      print("Will set to \(newValue). It is previously \(myProperty)")
    }
    didSet {
        print("Did set to \(myProperty). It was previously \(oldValue)")
    }
}
myProperty = 6
// willSet is called before myProperty is set
// didSet is called after myProperty is set.
/*
 NOTE : didSet and willSet will not call in the following cases
    - Assigning an initial value
    - Modifiying the variable within its own didSet or willSet
*/


// Section 2.3 : Lazy Stored Properties

// Lazy stored properties have value that are not calculated until first accessed. This is useful for memory saving when the variable calculation is computationally expensive. You declare a lazy properties with lazy.

// lazy var veryExpensiveVariable = expensiveMethod() // only for struct and class


// Section : 2.4 : Property Basics
class Dog {
    var name = ""
}

let dog = Dog()
dog.name = "Doggy"
print("Dog class property : \(dog.name)")
// This type of properties are considered to be Stored Properties, as they store something on an object and effect its memory

// Section : 2.5 : Computed Properties

var pi = 3.14

class Circle {
    var radius = 0.0
    var circumference : Double {
        get {
            return pi * radius * 2
        }
        set {
            radius = newValue / pi / 2
        }
    }
}

let circle = Circle()
circle.radius = 1
print("Circle circumference : \(circle.circumference)")
circle.circumference = 14
print("Circle Radius : \(circle.radius)")
// Computed properties are build with getter and setter, performing neccessary code when accessed and set.
// Read only computed properties are declared as var
var tempRadius = 12.0
var circumfernece : Double {
    get {
        return pi * 2 * tempRadius
    }
}
print("\(circumfernece)")


// Section 2.6 : Global and Local Variables

func printSomething() {
    let localVariable = "I am Local"
    print(localVariable)
}

func printSomethingAgain() {
    //print(localVaribale) // getting error undefined variable
}

let globalVariable = "I am Global"
func useGlobalString() {
    print(globalVariable)
}

for _ in 0..<2 {
    print(globalVariable)
}

class GlobalStringUSer {
    var computedGlobalString: String {
        return globalVariable
    }
}
let globalClass = GlobalStringUSer()
print(globalClass.computedGlobalString)


// Section : Type Properties
// Type properties are the properties on the type inself, not on instance. They can be stored or computed properties. You can declare that properties with static;

struct Doggy {
    static var noise = "Barki!"
}

print(Doggy.noise)

class Animal {
    class var noise : String {
        return "Animal noise"
    }
}
class Pig : Animal {
    override class var noise : String {
        return "Oink Oink"
    }
}
// This is used often with the Singleton pattern















