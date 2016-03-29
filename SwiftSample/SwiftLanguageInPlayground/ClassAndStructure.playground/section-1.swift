// Playground - noun: a place where people can play
import UIKit

let myTableView: UITableView = UITableView(frame: CGRectMake(0, 0, 320, 100))

struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

"The width of someResolution is \(someResolution.width)"
//println("The width of someResolution is \(someResolution.width)")
//dot syntax
// prints "The width of someResolution is 0”

"The width of someVideoMode is \(someVideoMode.resolution.width)"

someVideoMode.resolution.width = 1280
"The width of someVideoMode is now \(someVideoMode.resolution.width)"
// prints "The width of someVideoMode is now 1280

//value type struct
//let hd = Resolution(width: 1920, height: 1080)
//var cinema = hd

let vga = Resolution(width: 640, height: 480) // this is not for classes
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.width = 2048

"hd is still \(hd.width) pixels wide"
//println("hd is still \(hd.width) pixels wide")
// prints "hd is still 1920 pixels wide”


//value type enumeration
enum CompassPoint {
    case North, South, East, West
}
var currentDirection = CompassPoint.West
let rememberedDirection = currentDirection
currentDirection = .East
if rememberedDirection == .West {
    "The remembered direction is still .West"
    //println("The remembered direction is still .West")
}
// prints "The remembered direction is still .West”

//Classes Are Reference Types
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
"show tenEighty.frameRate \(tenEighty.frameRate)"

//Identity Operaror
if tenEighty === alsoTenEighty {
    "tenEighty and alsoTenEighty refer to the same Resolution instance."
    print("tenEighty and alsoTenEighty refer to the same Resolution instance.")
}
// prints "tenEighty and alsoTenEighty refer to the same Resolution instance.


//Assignment and Copy Behavior for Arrays
var a = [1, 2, 3]
var b = a
var c = a

a[0]
// 1
b[0]
// 1
c[0]
// 1

a[0] = 42
//b[0] = 43
a[0]
// 42
b[0]
// 42
c[0]
// 42

a.append(4) //at the time of appending it creates new copy
a[0] = 777

a[0]
// 777
b[0]
// 42
c[0]
// 42

//Checking Whether Two Arrays Share the Same Elements
if b == c {
    "b and c still share the same array elements."
} else {
   "b and c now refer to two independent sets of array elements."
}
// prints "b and c now refer to two independent sets of array elements.”

if a[0...1] == b[0...1] {
    print("These two subarrays share the same elements.")
} else {
    print("These two subarrays do not share the same elements.")
}
// prints "These two subarrays share the same elements.

//Check whether two arrays or subarrays share the same storage and elements by comparing them with the identity operators (=== and !==).
//since NSString is class type
var someString :NSString = "some string here"
var someOtherString :NSString = "different tsring"
var sampleString = someString

if someString === someString { //someOtherString //try "someOtherString" string to check
    "both share same reference here checking by identical operator"
}else{
    "both don't share same reference here checking by identical operator"
}



//Forcing a Copy of an Array
var names = ["Mohsen", "Hilary", "Justyn", "Amy", "Rich", "Graham", "Vic"]
var copiedNames = names
copiedNames[0] = "Mo"
print(names[0])
// prints "Mohsen"








