// Playground - noun: a place where people can play

//Declaring Constants and Variables
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

//maximumNumberOfLoginAttempts = 11 // it will give compile time error
currentLoginAttempt = 1 // you can change its value

//You can declare multiple constants or multiple variables on a single line, separated by commas:
var x = 0.0, y = 0.0, z = 0.0
let a = 10, b = 20, c = 30

//Type Annotations
var welcomeMessage: String
// The colon in the declaration means “…of type…
welcomeMessage = "Hello"



//Naming Constants and Variables
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcaow"

//Printing Constants and Variables
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
print(friendlyWelcome)
// prints "Bonjour!”

//Comments
// this is a comment

/* this is also a comment,
but written over multiple lines */

/* this is the start of the first multiline comment
/* this is the second, nested multiline comment */
this is the end of the first multiline comment */

//semicolon
let cat = "🐱"; print(cat)
// prints "🐱”

//Integers
let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8”


//type Inference
let meaningOfLife = 42
// meaningOfLife is inferred to be of type Int

let pi = 3.14159
// pi is inferred to be of type Double

let anotherPi = 3 + 0.14159
// anotherPi is also inferred to be of type Double


//Numeric Literals
let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation”

//floating-point literals
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

//just for clear readablity
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1


//Integer Conversion
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

//Integer and Floating-Point Conversion
let three = 3
let pointOneFourOneFiveNine = 0.14159
let piValue = Double(three) + pointOneFourOneFiveNine
// pi equals 3.14159, and is inferred to be of type Double


//The reverse is also true for floating-point to integer conversion
let integerPi = Int(pi)
// integerPi equals 3, and is inferred to be of type Int

//Boolean
let i = 1
//if i {
//    // this example will not compile, and will report an error
//}
if i == 1 {
    // this example will compile successfully
}


//let img = NSImage(name: "appIcon")


