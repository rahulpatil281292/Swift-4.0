//: Playground - noun: a place where people can play

import UIKit


// Section 4.1 : String and Character Literals

let greeting = "Hello"

let chr : Character = "H"
let chr1 : Character = "&"
// let chr2 : Character = "abc" // Invalid

// String interpolation

let  number = 5
let interpolatedNumber = "\(number)"
let fortyTwo = "\(6 * 7)"


// Section 4.2 : Concatenate Strings

let name = "John"
let surname = "Appleseed"
let fulname = name + " " + surname

let str2 = "there"
var instruction = "look over"
instruction += " " + str2

// Append a single character to a mutable string
var greeting1 : String = "Hello"
let exclamationMark : Character = "!"
greeting1.append(exclamationMark)

let words = ["apple","orange","banana"]
let str3 = words.joined(separator: " & ")


// Section 4.3 : String Encoding and Decomposition
let str4 = "!)@$"
Array(str4.characters)
str4.unicodeScalars.map{ $0.value }
Array(str4.utf8)
Array(str4.utf16)

str4.characters.count
str4.unicodeScalars.count
str4.utf16.count
str4.utf8.count
for c in str4.characters {
    print(c)
}
for u in str4.unicodeScalars {
    print(u)
}
for byte in str4.utf8 {
    print(byte)
}
for byte in str4.utf16 {
    print(byte)
}


// Section 4.4 : Examine and compare strings

if str4.isEmpty {
    print("Str 4 is empty")
} else {
    print("Empty")
}
let result = str4.isEmpty ? "fallback string" : "22"


// Section 4.5 : Reversing Strings
let aString = "This is a test string"
let reverseCharacter = aString.reversed()
print(String(reverseCharacter))


// Section 4.6 : Check if String contains Characters from a Defined Set
let letter = CharacterSet.letters
let phrase = "Test case"
let range = phrase.rangeOfCharacter(from: letter)
if let test = range {
    print("letter found")
} else {
    print("Letter not found")
}


// Section 4.7 : String Iteration
let string = "My fantastic string"
var currentIndex = string.startIndex

while currentIndex != string.endIndex {
    print(string[currentIndex])
    currentIndex = string.index(after: currentIndex)
}


















































