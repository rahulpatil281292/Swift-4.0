//: Playground - noun: a place where people can play

import UIKit

// Section 3.1 : Number types and Literals

// Literals
let x = 42 // x is Int by default
let y = 42.0 // y is Double by default

let z : UInt = 42  // z is UInt
let w : Float = -1  // w is Float
let q = 100 as Int8  // q is Int8

// underscore may be used to separate digits in numerics literals

let decimal = 100
let decimal1 = -1000
let decimal2 = -1_000
let decimal3 = 42_42_42

// Section 3.2 : Convert numbers to/form strings
String(199374)
String(1635999, radix: 10)
String(1659999, radix: 2)
String(1656999, radix:16, uppercase: true)
if Int("42") != nil {  print("Valid")}
if Int("Azae") != nil { print("Valid")} else {print("Invalid")}


// Section 3.3 : Rounding
round(3.000)
round(2.5666)
round(2.455)

//Ceil
ceil(3.00)
ceil(3.6)
ceil(3.1)

//Floor
floor(3.000)
floor(3.002)
floor(3.234)
floor(3.65)

// Int
// Convert a Double to an Int
Int(3.00)
Int(3.001)
Int(3.99)

// Note : round, ceil and floor handle both 64 and 32 bit architecture

// Section 3.4 : Random Number Generation

let flip = arc4random_uniform(2)
let roll = arc4random_uniform(6) + 1

// Section : 3.5 : Convert one number type to another
let intNumber = 42
Double(intNumber)

















