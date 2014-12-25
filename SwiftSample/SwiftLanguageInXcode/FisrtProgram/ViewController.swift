//
//  ViewController.swift
//  FisrtProgram

//in this sample code there are almost all topics are covered of swift language
//though it is bad practice writing structure inside function , here it is done only to encapsulate that particular topic within one function


import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //working with tuple
        workingWithTuples()
        
        //Optional and Implicit unwrapping
        optionalAndImplicitUnwrapping()
        
        
        //“Floating-Point Remainder Calculations”
        let floatRemainder = 8 % 2.5
        println("floatRemainder \(floatRemainder)")
        
        //working with range Operator
         rangeOperator()
        
        //working with charactors
        charactorWorking()
        
        //string comparisons
        stringComparisions()
        
        //upperCaseStringTesting
        upperCaseStringTest()
        
        //arrayImplimentation
        arrayImplimentations()
        //swift dynamic (type inference) behaviour with dictionary and lopps
        
        
        //dictionaryImplimentation
        dictionaryImplimentation()
        //dynamicDictionaryAndLoops()
        
        //For loop Implimentation
        forLoopImplimentations()
        
        //switch Implimentaion
        switchImplimentation()
        
        //coninue break fallThrough ruturn
        transferControlStatements()
        
        //Function Defining and calling
        functionsImplimentation()
        //call methods
        //println(greet("Sam",day: "friday", year: "2014"))
        
        //Function types implimentations
        functionTypesImplimentations()
        
        //Closures
        closureImplimentations()
        
        //enumeration
        enumerationImplimentation()
        
        //Property stored, computed, type and property observer
        workingWithStoredProperties()
        workingWithComputedProperty()
        workingWithTypeProperty()
        workingWithPropertyObserver()
        combinedProperties()// mix with stored, computed, type and property observer alltogether
        
        //working with methods (instance method)
        workingWithMethods()
        
        //working with subsripts with intances
        workingWithSubsript()
        
        //working with Inheritence
        workingWithInheritence()
        
        //working with initializations
        workingWithInitialization()
        workingWithConvenienceAndDesignatedInitializer()
        settingDefaultPropertyValueWithClosure()
        
        //working With deinitializer
         workingWithDeInitializer()
        
        //working with ARC
        strongRefenceCycleCaseSolvedByWeak()  //call this method just to check how it creates memory leak case by fooling ARC
        strongRefenceCycleCaseSolvedByUnowned()
        strongRefenceCycleCaseSolvedByUnownedReferencesAndImplicitlyUnwrappedOptional()
        strongRefenceCycleCaseSolvedWithClosure()
        
        //working with Optional Chaining
        workingWithOptionalChaining()
        
        //working with TypeCast
        workingWithTypeCast()
        workingWithAnyObject()
        workingWithAny()
        
        //working with Nested Types
        workingWithNestedTypes()
        
        //Extensions
        computedPropertiesExtension()
        //initializerExtension()
        methodExtension()
        mutatingInstanceMethodExtension()
        subscriptExtension()
        nestedTypeExtension()
        
        //protocols
        
        
    }
 
    func workingWithTuples(){
        let (Value1,value2,value3) = ("abc", "pqr", "xyz") //getGasPrices() //call a method which returns mutiple values
        println("\(Value1,value2,value3)")
    }
    
    func dynamicDictionaryAndLoops(){
        let interestNumbers = [
            "Prime" : [2,3,5,7,11,13],
            "Fabonacci" : [1,1,200,3,5,8],
            "square" : [1,4,9,16,250]
        ] //this is how you can define your dictionary
        
        var largest = 0
        for(kind, numbers) in interestNumbers{ // swift is dynamic and intestNumbers(key value compliant) so you can write like (kind, numbers)
            for number in numbers{  //for each kind there numbers array
                if number > largest{
                    largest = number
                }
            }
        }
        println("lagest number is \(largest)")
        
        var n = 2
        while n < 100 {  // while loop
            n = n * 2
        }
        println("while- even numbers less than 100 are \(n)")
        
        var m = 2
        do{
            m = m * 2
        }while m < 100
        println("do while- loop even numbers less than 100 are \(n)")
        
        var firstForLoop = 0
        for i in 0..<3{
            firstForLoop+=i
        }
        println("firstForLoop\(firstForLoop)")
        //same works below
        for var i = 0; i<3; ++i{
            firstForLoop+=1
        }
        println("firstForLoop\(firstForLoop)")
    }
    
    func greet(name:String, day:String, year:String)->String{
        return "Hello \(name), today is \(day) year is \(year)."
    }
    
    func getGasPrices() -> (String, String, String) {
        return ("abcd", "pqr", "xyz")
        
    }
    
    func sumof(numbers:Int...)->Int{
        var sum = 0
        for number in numbers{
            sum += number
        }
        return sum
    }
    

    
    
    /*+ (NSArray*) partitionArray:(NSArray*)p {
    // can't partition for non-power-2 array-sizes
    if (p.count % 2 != 0) return nil;
    // return an array with the two partitions
    return @[[p subarrayWithRange: NSMakeRange(0, p.count/2 - 1)]
    [p subarrayWithRange: NSMakeRange(p.count/2, p.count/2 - 1)]]
    }
    
    // Wrong
    Now in Swift, we can't do such a thing. If we tell the Swift compiler that we're returning an NSArray from a function, we have to return an NSArray. Everything else is a compile error
    
    func partitionArray(p: NSArray) -> NSArray {
        return nil // Compile error
    }
    
    // Right
    func partitionArray(p: NSArray) -> NSArray? {
        // Works fine, we return Optional.None
        if p.count % 2 != 0 {
            return nil
        }
        // partition
        return NSArray(array: [p[0..(p.count/2-1)], p[p.count/2..p.count-1]])
    }*/
    
    
    
    func optionalAndImplicitUnwrapping(){
        //optional value and implicit unwrapped optional
        let possibleString1: String? = "An optional string."
        
        if (possibleString1 != nil) {
            println(possibleString1!) // requires an exclamation mark to access its value
            // prints "An optional string.
        }else{
            
        }
        
        
        let possibleString2 : String!="An implicit unwrapping optional string"
        if (possibleString2 != nil) {
            println("possibleString \(possibleString2)")
            
        }
    }
    
    func charactorWorking(){
        println("working with characters")
        for character in "Dog!🐶" {
            println(character)
        }
        
        //counting characters
        let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
        println("unusualMenagerie has \(countElements(unusualMenagerie)) characters")
    }
    
    func rangeOperator(){
        //Closed Range Operator
        for index in 1...5 { //includes 1 and 5
            println("\(index) times 5 is \(index * 5)")
        }
        
        //Half-Closed Range Operator
        let names = ["Anna", "Alex", "Brian", "Jack"]
        let count = names.count
        for i in 0..<count { //includes 0 not count
            println("Person \(i + 1) is called \(names[i])")
        }
    }
    
    func stringComparisions(){
        let quotation = "We're a lot alike, you and I."
        let sameQuotation = "We're a lot alike, you and I."
        if quotation == sameQuotation {
            println("These two strings are considered equal")
        }
       
        let romeoAndJuliet = [
            "Act 1 Scene 1: Verona, A public place",
            "Act 1 Scene 2: Capulet's mansion",
            "Act 1 Scene 3: A room in Capulet's mansion",
            "Act 1 Scene 4: A street outside Capulet's mansion",
            "Act 1 Scene 5: The Great Hall in Capulet's mansion",
            "Act 2 Scene 1: Outside Capulet's mansion",
            "Act 2 Scene 2: Capulet's orchard",
            "Act 2 Scene 3: Outside Friar Lawrence's cell",
            "Act 2 Scene 4: A street in Verona",
            "Act 2 Scene 5: Capulet's mansion",
            "Act 2 Scene 6: Friar Lawrence's cell"
        ]
        
        var act1SceneCount = 0
        for scene in romeoAndJuliet {
            if scene.hasPrefix("Act 1 ") {
                ++act1SceneCount
            }
        }
        println("There are \(act1SceneCount) scenes in Act 1")
    
        
}
    
    func upperCaseStringTest(){
        let normal = "Could you help me, please?"
        let shouty = normal.uppercaseString
        // shouty is equal to "COULD YOU HELP ME, PLEASE?"
        let whispered = normal.lowercaseString
        // whispered is equal to "could you help me, please?”
        
    }
    
    
    func arrayImplimentations(){
        var shoppingList1: [String] = ["Eggs", "Milk"]
        var shoppingList2 = ["Eggs", "Milk"]     //shorthand initialisation
        println("The shopping list contains \(shoppingList2.count) items.")
        // prints "The shopping list contains 2 items.
        
        shoppingList2.append("Flour")
        // shoppingList now contains 3 items, and someone is making pancakes
        
        shoppingList2.append("Baking Powder")
        // shoppingList now contains 4 items”
        
        var firstItem = shoppingList2[0]
         println("firstItem \(shoppingList2[0])")
        
        
        shoppingList2[1...2] = ["Bananas", "Apples"]
        println("The shopping list is. \(shoppingList2)")
        //replace 1st 2nd list items with "Bananas", "Apples"
        
        shoppingList2.insert("Maple Syrup", atIndex: 0)
        // shoppingList now contains 7 items

        let mapleSyrup = shoppingList2.removeAtIndex(0)
        // the item that was at index 0 has just been removed
        // shoppingList now contains 6 items, and no Maple Syrup
        // the mapleSyrup constant is now equal to the removed "Maple Syrup" string”
        
        let apples = shoppingList2.removeLast()
        // the last item in the array has just been removed
        // shoppingList now contains 5 items, and no cheese
        // the apples constant is now equal to the removed "Apples" string”
        
        
    
        if shoppingList2.isEmpty {
            println("The shopping list is empty.")
        } else {
            println("The shopping list is not empty. List is \(shoppingList2)")
        }
        // prints "The shopping list is not empty.

        
        for item in shoppingList2 {
            println(item)
        } //iterations
        
        for (index, value) in enumerate(shoppingList2) {
            println("Item \(index + 1): \(value)")
        }// used enumerate function
        
        var someInt = [Int]()
        someInt.insert(3,atIndex:0)
        someInt.append(3)
        // someInts now contains 2 values of type Int
        someInt = []
        // someInts is now an empty array, but is still of type Int[]”
        
        var someOtherInt = [String]()
        someOtherInt.append("someOtherString")
        
        var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
        // threeDoubles is of type Double[], and equals [0.0, 0.0, 0.0]
        println("threeDoubles :\(threeDoubles)")
        
        var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)
        // anotherThreeDoubles is inferred as Double[], and equals [2.5, 2.5, 2.5]
        println("anotherThreeDoubles :\(anotherThreeDoubles)")
        
    }
    
    
    func dictionaryImplimentation(){
        var airports: Dictionary<String, String> = ["TYO": "Tokyo", "DUB": "Dublin"]
        //explicit type annotation”
        
        var airports2 = ["TYO": "Tokyo", "DUB": "Dublin"]
       //  type inference.
        
        println("The dictionary of airports contains \(airports.count) items.")
        // prints "The dictionary of airports contains 2 items.
        
        airports2["LHR"] = "London"
        // the airports dictionary now contains 3 items”
        
        println("Dictionary :\(airports2)")
        
        airports2["LHR"] = "London Heathrow"
        // the value for "LHR" has been changed to "London Heathrow”
        
        println("Dictionary :\(airports2)")
        
        if let oldValue = airports2.updateValue("Dublin International", forKey: "DUB") {
            println("The old value for DUB was \(oldValue).")
        }// prints "The old value for DUB was Dublin.
        
        println("Dictionary :\(airports2)")
        
        if let oldValue = airports2.updateValue("INDIRA GANDHI Airport", forKey: "IND") {
            println("The old value for DUB was \(oldValue).")
        }// prints nothing.
        
         println("Dictionary :\(airports2)")
        
        println("The dictionary of airports contains \(airports.count) items.")
        // prints "The dictionary of airports contains 2 items.”
        
        println("The dictionary of airports contains \(airports2.count) items.")
        // prints "The dictionary of airports contains 4 items.”
        
        if let airportName = airports["DUB"] { //a dictionary’s subscript returns an optional value of the dictionary’s value type
            println("The name of the airport is \(airportName).")
        } else {
            println("That airport is not in the airports dictionary.")
        }
        
        airports["APL"] = "Apple International"
        // Apple International" is not the real airport for APL, so delete it
        airports["APL"] = nil
        // APL has now been removed from the dictionary
        
        if let removedValue = airports.removeValueForKey("DUB") {
            println("The removed airport's name is \(removedValue).")
        } else {
            println("The airports dictionary does not contain a value for DUB.")
        }
        // prints "The removed airport's name is Dublin International.
        
        for (airportCode, airportName) in airports2 {
            println("\(airportCode): \(airportName)")
        }
        
        //Iterate for each key in the dictionary
        // TYO: Tokyo
        // LHR: London Heathrow”
        
        for airportCode in airports2.keys {
            println("Airport code: \(airportCode)")
        }
        // Airport code: TYO
        // Airport code: LHR
        
        
        for airportName in airports2.values {
            println("Airport name: \(airportName)")
        }
        // Airport name: Tokyo
        // Airport name: London Heathrow”

       
        //“If you need to use a dictionary’s keys or values with an API that takes an Array instance, initialize a new array with the keys or values property:”
        let airportCodes = Array(airports.keys)
        // airportCodes is ["TYO", "LHR"]
        
        let airportNames = Array(airports.values)
        // airportNames is ["Tokyo", "London Heathrow"]”
        
    
        
    }
    
    
    func forLoopImplimentations(){
        for index in 1...5 { //closed Range
            println("\(index) times 5 is \(index * 5)")
        }
        
        // 1 times 5 is 5
        // 2 times 5 is 10
        // 3 times 5 is 15
        // 4 times 5 is 20
        // 5 times 5 is 25”
        //In the example above, index is a constant whose value is automatically set
        
        
        //“The underscore character _ (used in place of a loop variable) causes the individual values to be ignored and does not provide access to the current value during each iteration of the loop.”
        
        let base = 3
        let power = 10
        var answer = 1
        for _ in 1...power {
            answer *= base
        }
        println("\(base) to the power of \(power) is \(answer)")
        // prints "3 to the power of 10 is 59049
        
        let names = ["Anna", "Alex", "Brian", "Jack"]
        for name in names {
            println("Hello, \(name)!")
        }
        // Hello, Anna!
        // Hello, Alex!
        // Hello, Brian!
        // Hello, Jack!”
        
        //iterate over a dictionary to access its key-value pairs.
        let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
        for (animalName, legCount) in numberOfLegs {
            println("\(animalName)s have \(legCount) legs")
        }
        // spiders have 8 legs
        // ants have 6 legs
        // cats have 4 legs”
        
        //iterate over characters
        for character in "Hello" {
            println(character)
        }
        // H
        // e
        // l
        // l
        // o
        
    }
    
    func switchImplimentation(){
        let someCharacter: Character = "e"
        switch someCharacter {
        case "a", "e", "i", "o", "u":
            println("\(someCharacter) is a vowel")
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
        "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            println("\(someCharacter) is a consonant")
        default:
            println("\(someCharacter) is not a vowel or a consonant")
        }
        // prints "e is a vowel”
        
        
        //Range Matching:
        let count = 3_000_000_000_000
        let countedThings = "stars in the Milky Way"
        var naturalCount: String
        switch count {
        case 0:
            naturalCount = "no"
        case 1...3:
            naturalCount = "a few"
        case 4...9:
            naturalCount = "several"
        case 10...99:
            naturalCount = "tens of"
        case 100...999:
            naturalCount = "hundreds of"
        case 1000...999_999:
            naturalCount = "thousands of"
        default:
            naturalCount = "millions and millions of"
        }
        println("There are \(naturalCount) \(countedThings).")
        // prints "There are millions and millions of stars in the Milky Way.

        
        //Tuples
        let somePoint = (1, 1)
        switch somePoint {
        case (0, 0):
            println("(0, 0) is at the origin")
        case (_, 0):
            println("(\(somePoint.0), 0) is on the x-axis")
        case (0, _):
            println("(0, \(somePoint.1)) is on the y-axis")
        case (-2...2, -2...2):
            println("(\(somePoint.0), \(somePoint.1)) is inside the box")
        default:
            println("(\(somePoint.0), \(somePoint.1)) is outside of the box")
        }
        // prints "(1, 1) is inside the box”
        
        let anotherPoint = (2, 0)
        switch anotherPoint {
//        case (let x, 0):
//            println("on the x-axis with an x value of \(x)")
        case (0, let y):
            println("on the y-axis with a y value of \(y)")
        case let (x, y):
            println("somewhere else at (\(x), \(y))")
        }
        
        
       // A switch case can use a where clause to check for additional conditions.
        let yetAnotherPoint = (1, -1)
        switch yetAnotherPoint {
        case let (x, y) where x == y:
            println("(\(x), \(y)) is on the line x == y")
        case let (x, y) where x == -y:
            println("(\(x), \(y)) is on the line x == -y")
        case let (x, y):
            println("(\(x), \(y)) is just some arbitrary point")
        }

    }
    
    func transferControlStatements(){
        //continue
        let puzzleInput = "great minds think alike"
        var puzzleOutput = ""
        for character in puzzleInput {
            switch character {
            case "a", "e", "i", "o", "u", " ":
                continue
            default:
                puzzleOutput.append(character)
            }
        }
        println(puzzleOutput)
        // prints "grtmndsthnklk”
        
        //break
        let numberSymbol: Character = "三"  // Simplified Chinese for the number 3
        var possibleIntegerValue: Int?
        switch numberSymbol {
        case "1", "١", "一", "๑":
            possibleIntegerValue = 1
        case "2", "٢", "二", "๒":
            possibleIntegerValue = 2
        case "3", "٣", "三", "๓":
            possibleIntegerValue = 3
        case "4", "٤", "四", "๔":
            possibleIntegerValue = 4
        default:
            break
        }
        if let integerValue = possibleIntegerValue {
            println("The integer value of \(numberSymbol) is \(integerValue).")
        } else {
            println("An integer value could not be found for \(numberSymbol).")
        }
        // prints "The integer value of 三 is 3.
        
        //fallthrough
        //If you really need C-style fallthrough behavior, you can opt in to this behavior on a case-by-case basis with the fallthrough keyword.
        
        let integerToDescribe = 5
        var description = "The number \(integerToDescribe) is"
        switch integerToDescribe {
        case 2, 3, 5, 7, 11, 13, 17, 19:
            description += " a prime number, and also"
            fallthrough
        default:
            description += " an integer."
        }
        println(description)
        // prints "The number 5 is a prime number, and also an integer.
        
    }
    
    func functionsImplimentation(){
        //DEFINING
        func sayHello(personName: String) -> String {
            let greeting = "Hello, " + personName + "!"
            return greeting
        }
        println(sayHello("Anna"))
        // prints "Hello again, Anna!”
        
        //MUTTIPLE PARAMETERS
        func halfOpenRangeLength(start: Int, end: Int) -> Int {
            return end - start
        }
        println(halfOpenRangeLength(1, 10))
        // prints "9”
        
        
        //Functions Without Parameters
        func sayHelloWorld() -> String {
            return "hello, world"
        }
        println(sayHelloWorld())
        // prints "hello, world
        
        //Functions Without Return Values
        func sayGoodbye(personName: String) {
            println("Goodbye, \(personName)!")
        }
        sayGoodbye("Dave")
        // prints "Goodbye, Dave!
        
        func printAndCount(stringToPrint: String) -> Int {
            println(stringToPrint)
            return countElements(stringToPrint)
        }
        func printWithoutCounting(stringToPrint: String) {
            printAndCount(stringToPrint)
        }
        printAndCount("hello, world")
        // prints "hello, world" and returns a value of 12
        printWithoutCounting("hello, world")
        // prints "hello, world" but does not return a value
        
        
        //multiple return type
        func count(string: String) -> (vowels: Int, consonants: Int, others: Int) {
            var vowels = 0, consonants = 0, others = 0
            for character in string {
                switch String(character).lowercaseString {
                case "a", "e", "i", "o", "u":
                    ++vowels
                case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
                "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
                    ++consonants
                default:
                    ++others
                }
            }
            return (vowels, consonants, others)
        }
        
        let total = count("some arbitrary string!")
        println("\(total.vowels) vowels and \(total.consonants) consonants")
        println("others \(total.others)")
        // prints "6 vowels and 13 consonants
        
        //External parameter name
//        func join(s1: String, s2: String, joiner: String) -> String {
//            return s1 + joiner + s2
//        }
//        
//        join("hello", "world", ", ")
        // returns "hello, world”
        
        //To make the purpose of these String values clearer, define external parameter names for each join function parameter
        func join(string s1: String, toString s2: String, withJoiner joiner: String)-> String {
                return s1 + joiner + s2
        }
        // returns "hello, world”
        
        
        //Shorthand External Parameter Names
        //you do not need to write the same name twice for that parameter. Instead, write the name once, and prefix the name with a hash symbol (#). This tells Swift to use that name as both the local parameter name and the external parameter name.
        //The automatic external name
        
        func containsCharacter(#string: String, #characterToFind: Character) -> Bool? {
            for character in string {
                if character == characterToFind {
                    return true
                }
            }
            return false
        }
        
        if let containsAVee = containsCharacter(string: "aardvark", characterToFind: "v") {
            println("containsCharacter charactor \"v\"")
        }
        // containsAVee equals true, because "aardvark" contains a "v”
        
        
        
        //Default Parameter Values
        func joinStrings(string s1: String, toString s2: String,
            withJoiner joiner: String = " ") -> String {
                return s1 + joiner + s2
        }
        joinStrings(string: "hello", toString: "world", withJoiner: "-")
        // returns "hello-world”
        joinStrings(string: "hello", toString: "world")
        // returns "hello world

        
        
        //External Names for Parameters with Default Values
        func joinTwoStrings(s1: String, s2: String, joiner: String = " ") -> String {
            return s1 + joiner + s2
        }
        joinTwoStrings("hello", "world", joiner: "-") //joiner is auto extarnal parameter
        // returns "hello-world”
        
        
        
        
        //Variadic Parameters
        //A variadic parameter accepts zero or more values of a specified type.
        //a variadic parameter with a name of numbers and a type of Double... is made available within the function’s body as a constant array called numbers of type Double[].”
        func arithmeticMean(numbers: Double...) -> Double {
            var total: Double = 0
            for number in numbers {
                total += number
            }
            return total / Double(numbers.count)
        }
        arithmeticMean(1, 2, 3, 4, 5)
        // returns 3.0, which is the arithmetic mean of these five numbers
        arithmeticMean(3, 8, 19)
        // returns 10.0, which is the arithmetic mean of these three numbers
        println("arithmeticMean \(arithmeticMean())")
        //another example
        println("sum of 2 numbers are \(sumof(5,10))" )
        println("sum of 3 numbers are \(sumof(5,25,10))")
        
        
        //Constant and Variable Parameters:
        //Function parameters are constants by default. if want to modify value use var
        func alignRight(var string: String, count: Int, pad: Character) -> String {
            let amountToPad = count - countElements(string)
            for _ in 1...amountToPad {
                string = String(pad) + string
            }
            return string
        }
        let originalString = "hello"
        let paddedString = alignRight(originalString, 10, "-")
        // paddedString is equal to "-----hello"
        // originalString is still equal to "hello
        println("Padded string \(paddedString) original string \(originalString)")

        
        //InOut parameters
        func swapTwoInts(inout a: Int, inout b: Int) {
            let temporaryA = a
            a = b
            b = temporaryA
            
        }
        var someInt = 3
        var anotherInt = 107
        swapTwoInts(&someInt, &anotherInt)
        println("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
        // prints "someInt is now 107, and anotherInt is now 3
    }
    
    func functionTypesImplimentations(){
        func addTwoInts(a: Int, b: Int) -> Int {
            return a + b
        }
        func multiplyTwoInts(a: Int, b: Int) -> Int {
            return a * b
        }
        
        func printHelloWorld() {
            println("hello, world")
        }
        //Define a variable called mathFunction, which has a type of ‘a function that takes two Int values, and returns an Int value.’ Set this new variable to refer to the function called addTwoInts.
        var mathFunction: (Int, Int) -> Int = addTwoInts
        println("Result: \(mathFunction(2, 3))")
        // prints "Result: 5”
        mathFunction = multiplyTwoInts
        println("Result: \(mathFunction(2, 3))")
        // prints "Result: 6”
        
        //As with any other type, you can leave it to Swift to infer the function type when you assign a function to a constant or variable:
        let anotherMathFunction = addTwoInts
        // anotherMathFunction is inferred to be of type (Int, Int) -> Int”
        
        //Function Types as Parameter Types
        func printMathResult(mathFunction: (Int, Int) -> Int, a: Int, b: Int) {
            println("Result: \(mathFunction(a, b))")
        }
        printMathResult(addTwoInts, 3, 5)
        // prints "Result: 8”
        
        //Function Types as Return Types
        functionTypeAsReturnType()

        //nested Function
        nestedFuction()
    }
    
    func functionTypeAsReturnType(){
        func stepForward(input: Int) -> Int {
            return input + 1
        }
        func stepBackward(input: Int) -> Int {
            return input - 1
        }
        //function of type (Int) -> Int
        //chooseStepFunction returns the stepForward function or the stepBackward function based on a Boolean parameter called backwards:
        func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
            return backwards ? stepBackward : stepForward
        }
        var currentValue = 3
        let moveNearerToZero = chooseStepFunction(currentValue > 0)
        println("currentValue is now \(moveNearerToZero)")
        // moveNearerToZero now refers to the stepBackward() function
        
        println("Counting to zero:")
        // Counting to zero:
        while currentValue != 0 {
            println("\(currentValue)... ")
            currentValue = moveNearerToZero(currentValue)
        }
        println("zero!")
        // 3...
        // 2...
        // 1...
        // zero!
        
    }
    
    func nestedFuction(){
        func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
            func stepForward(input: Int) -> Int { return input + 1 }
            func stepBackward(input: Int) -> Int { return input - 1 }
            return backwards ? stepBackward : stepForward
        }
        var currentValue = -4
        let moveNearerToZero = chooseStepFunction(currentValue > 0)
        // moveNearerToZero now refers to the nested stepForward() function
        while currentValue != 0 {
            println("\(currentValue)... ")
            currentValue = moveNearerToZero(currentValue)
        }
        println("zero!")
        // -4...
        // -3...
        // -2...
        // -1...
        // zero!
    }
    
    //Closures
    func closureImplimentations(){
        //named fuction as closure
        let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
        func backwards(s1: String, s2: String) -> Bool {
            return s1 > s2
        }
        var reversed = sorted(names, backwards) //backwards is sorting closure here
        println("reversed sorted aray:\(reversed)")
        //reversed sorted aray: ["Ewa", "Daniella", "Chris", "Barry", "Alex"]
        
        //inline closure
        //reversed = sort(names, { }) //inline closure
        reversed = sorted(names, { (s1: String, s2: String) -> Bool in
            return s1 > s2    //body
            })
        //reversed = sort(names, { (s1: String, s2: String) -> Bool in return s1 > s2})  //can br wriitten in one line
        println("reversed sorted aray:\(reversed)")
        //reversed sorted aray: ["Ewa", "Daniella", "Chris", "Barry", "Alex"]
        
        
        //Inferring Type From Context
        reversed = sorted(names, { s1, s2 in return s1 > s2})
        //swift knows expected  function of type (String, String) -> Bool
        //Swift can infer the types of its parameters and the type of the value it returns

        
        //Implicit Returns from Single-Expression Closures
        //Single-expression closures can implicitly return the result of their single expression by omitting the return keyword from their declaration
        //reversed = sorted(names, { s1, s2 in s1 > s2 } ) because of ambiguity and unclear way it is removed from swift
        
        //Shorthand Argument Names
        //If you use these shorthand argument names within your closure expression, you can omit the closure’s argument list from its definition,
        //reversed = sorted(names, { $0 > $1 } ) //because of ambiguity and unclear way it is removed from swift
        reversed = sorted(names, { return $0 > $1 } ) //can use like this
        //Here, $0 and $1 refer to the closure’s first and second String arguments.
        
        
        //you can simply pass in the greater-than operator, and Swift will infer that you want to use its string-specific implementation)
        //reversed = sort(names,  >) //in this current version of swift it is removed
        
        
        //Trailing closure
        reversed = sorted(names) {return $0 > $1 }
        //another example of trailing closure
        trailingClosureExample()
        
        //capturing values
        capturingValues()
    }
    
    func trailingClosureExample(){
        let digitNames = [
            0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
            5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
        ]
        let numbers = [16, 58, 510]
        println("numbers:\(numbers)")
        let strings = numbers.map { // trailing closure without paranthesis bcz accepts only closure as argument
            (var number) -> String in
            var output = ""
            while number > 0 {
                output = digitNames[number % 10]! + output
                number /= 10
            }
            return output
        }
        // strings is inferred to be of type String[]
        // its value is ["OneSix", "FiveEight", "FiveOneZero"]
        println("output:\(strings)")
        /* NOTE:
        The call to the digitNames dictionary’s subscript is followed by an exclamation mark (!), because dictionary subscripts return an optional value to indicate that the dictionary lookup can fail if the key does not exist. In the example above, it is guaranteed that number % 10 will always be a valid subscript key for the digitNames dictionary, and so an exclamation mark is used to force-unwrap the String value stored in the subscript’s optional return value.
        */

        
    }
    
    
    func capturingValues(){
        func makeIncrementor(forIncrement amount: Int) -> () -> Int {
            var runningTotal = 0
            func incrementor() -> Int {
                runningTotal += amount
                return runningTotal
            }
            return incrementor
        }
        
        let incrementByTen = makeIncrementor(forIncrement: 10)
        
        println("incrementByTen() \(incrementByTen())")
        // returns a value of 10
        println("incrementByTen() \(incrementByTen())")
        // returns a value of 20
        println("incrementByTen() \(incrementByTen())")
        // returns a value of 30
        let incrementBySeven = makeIncrementor(forIncrement: 7)
        println("incrementByTen() \(incrementBySeven())")
        // returns a value of 7
         println("incrementByTen() \(incrementByTen())")
        // returns a value of 40
    }
    
    
    func enumerationImplimentation(){
        enum CompassPoint {
            case North
            case South
            case East
            case West
        }
        enum Planet {
            case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
        }
        
        
        var directionToHead = CompassPoint.West
        directionToHead = .East //Once directionToHead is declared as a CompassPoint, you can set it to a different CompassPoint value using a shorter dot syntax
        
        directionToHead = .South
        let direction = CompassPoint.West
        switch  direction  {
        case .North:
            println("Lots of planets have a north")
        case .South:
            println("Watch out for penguins")
        case .East:
            println("Where the sun rises")
        case .West:
            println("Where the skies are blue")
        }
        // prints "Watch out for penguins
        
        
        let somePlanet = Planet.Earth
        switch somePlanet {
        case .Earth:
            println("Mostly harmless")
        default:
            println("Not a safe place for humans")
        }
        // prints "Mostly harmless”

        
        //Assiciated Values
        enumerationWithAssociationValues1()
        //enumerationWithAssociationValues2()
        
        //Raw Values
        enum ASCIIControlCharacter: Character {
            case Tab = "\t"
            case LineFeed = "\n"
            case CarriageReturn = "\r"
        }
        
        enum PlanetName: Int {
            case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
        }
        
        //toRaw and fromRaw methods
        let earthsOrder = PlanetName.Earth.rawValue
        // earthsOrder is 3
        let possiblePlanet = PlanetName(rawValue: 7)
        // possiblePlanet is of type Planet? and equals Planet.Uranus
        
        //enumeration with function
        enumerationWithFunction()
        
        //enumeration with structure
    }
    
    func enumerationWithAssociationValues1(){
        enum Barcode {
            case UPCA(Int, Int, Int)
            case QRCode(String)
        }
        var productBarcode = Barcode.UPCA(8, 85909_51226, 3)
        productBarcode = .QRCode("ABCDEFGHIJKLMNOP")
        
        
        switch productBarcode {
        case .UPCA(let numberSystem, let identifier, let check):
            println("UPC-A with value of \(numberSystem), \(identifier), \(check).")
        case .QRCode(let productCode):
            println("QR code with value of \(productCode).")
        }
        // prints "QR code with value of ABCDEFGHIJKLMNOP.”
        
        
        //can be written as
        switch productBarcode {
        case let .UPCA(numberSystem, identifier, check):
            println("UPC-A with value of \(numberSystem), \(identifier), \(check).")
        case let .QRCode(productCode):
            println("QR code with value of \(productCode).")
        }
        // prints "QR code with value of ABCDEFGHIJKLMNOP.
    }
    
    func enumerationWithAssociationValues2(){
        enum ServerResponse {
            case Result(String, String)
            case Error(String)
        }
        
        let success = ServerResponse.Result("6:00 am", "8:09 pm")
        let failure = ServerResponse.Error("Out of cheese.")
        
        switch success {
        case let .Result(sunrise, sunset):
            let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
        case let .Error(error):
            let serverResponse = "Failure...  \(error)"
        }
        
    }
    
    func enumerationWithFunction(){
        enum Rank: Int { //the raw value type of the enumeration is Int, so you only have to specify the first raw value.
            case Ace = 1
            case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
            case Jack, Queen, King
            func simpleDescription() -> String {
                switch self {
                case .Ace:
                    return "ace"
                case .Jack:
                    return "jack"
                case .Queen:
                    return "queen"
                case .King:
                    return "king"
                default:
                    return String(self.rawValue)
                }
            }
        }
        let ace = Rank.Ace
        let aceRawValue = ace.rawValue
        
        if let convertedRank = Rank(rawValue: 3) {
            let threeDescription = convertedRank.simpleDescription()
            println("threeDescription:\(threeDescription)")
        }
       
    }
    
    func enumerationWithStructure(){
        enum Rank: Int {
            case Ace = 1
            case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
            case Jack, Queen, King
            func simpleDescription() -> String {
                switch self {
                case .Ace:
                    return "ace"
                case .Jack:
                    return "jack"
                case .Queen:
                    return "queen"
                case .King:
                    return "king"
                default:
                    return String(self.rawValue)
                }
            }
        }
        
       
        enum Suit {
            case Spades, Hearts, Diamonds, Clubs
            func simpleDescription() -> String {
                switch self {
                case .Spades:
                    return "spades"
                case .Hearts:
                    return "hearts"
                case .Diamonds:
                    return "diamonds"
                case .Clubs:
                    return "clubs"
                }
            }
        }
        
        struct Card {
            var rank: Rank
            var suit: Suit
            func simpleDescription() -> String {
                return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
            }
        }
        let threeOfSpades = Card(rank: .Three, suit: .Spades)
        let threeOfSpadesDescription = threeOfSpades.simpleDescription()
        
        println("threeOfSpadesDescription \(threeOfSpadesDescription)")
    }
    
    func workingWithStoredProperties(){
        //Stored properties
        struct FixedLengthRange {
            var firstValue: Int
            let length: Int
        }
        var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
        // the range represents integer values 0, 1, and 2
        rangeOfThreeItems.firstValue = 6
        // the range now represents integer values 6, 7, and 8
        
        
        //Stored Properties of Constant Structure Instances
        let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
        // this range represents integer values 0, 1, 2, and 3
        //rangeOfFourItems.firstValue = 6
        // this will report an error, even thought firstValue is a variable property
        
        //The same is not true for classes, which are reference types
        
        //Stored Property
        workingWithLazyStoredProperty()
    }
    
    class DataImporter {
        /*
        DataImporter is a class to import data from an external file.
        The class is assumed to take a non-trivial amount of time to initialize.
        */
        var fileName = "data.txt"
        // the DataImporter class would provide data importing functionality here
    }
    
    class DataManager {
        lazy var importer = DataImporter()
        var data = [String]()
        // the DataManager class would provide data management functionality here
    }
    func workingWithLazyStoredProperty(){
        //Lazy Stored Properties
        let manager = DataManager()
        manager.data.append("Some data")
        manager.data.append("Some more data")
        // the DataImporter instance for the importer property has not yet been created
        
        println(manager.importer.fileName)
        // the DataImporter instance for the importer property has now been created
        // prints "data.txt”
    }
    
    func workingWithComputedProperty(){
        //Computed Properties
        struct Point {
            var x = 0.0, y = 0.0
        }
        struct Size {
            var width = 0.0, height = 0.0
        }
        struct Rect {
            var origin = Point()
            var size = Size()
            var center: Point {  //computed property
            
            get {
                let centerX = origin.x + (size.width / 2)
                let centerY = origin.y + (size.height / 2)
                return Point(x: centerX, y: centerY)
            }
            set(newCenter) {
                origin.x = newCenter.x - (size.width / 2)
                origin.y = newCenter.y - (size.height / 2)
            }
            }
        }
        
        var square = Rect(origin: Point(x: 0.0, y: 0.0),
            size: Size(width: 10.0, height: 10.0))
        let initialSquareCenter = square.center
        square.center = Point(x: 15.0, y: 15.0)
        println("square.origin is now at (\(square.origin.x), \(square.origin.y))")
        // prints "square.origin is now at (10.0, 10.0)”
        
        //Read-Only Computed Properties
        workingWithReadOnlyComputedProperty()
    }
    
    func workingWithReadOnlyComputedProperty(){
        //Read-Only Computed Properties
        struct Cuboid {
            var width = 0.0, height = 0.0, depth = 0.0
            var volume: Double {
            return width * height * depth
            }
        }
        let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
        println("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")
        // prints "the volume of fourByFiveByTwo is 40.0”
    }
    
    
    struct SomeStructure {
        static var storedTypeProperty = "Some value."
        static var computedTypeProperty: Int {
        return 10
        }
    }
    enum SomeEnumeration {
        static var storedTypeProperty = "Some value."
        static var computedTypeProperty: Int {
        return 20
        }
    }
    class SomeClass {
        class var computedTypeProperty: Int {
        return 30
        }
    }
    func workingWithTypeProperty(){
        //Type Properties
        //stored typed properies
        //computed type properties
       
        
        //Querying and Setting Type Properties
        println(SomeClass.computedTypeProperty)
        // prints "42"
        
        println(SomeStructure.storedTypeProperty)
        // prints "Some value."
        SomeStructure.storedTypeProperty = "Another value."
        println(SomeStructure.storedTypeProperty)
        // prints "Another value.”
    }
    
    
    class StepCounter {
        var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            println("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                println("Added \(totalSteps - oldValue) steps")
            }
        }
        }
    }
    func workingWithPropertyObserver(){
        //Property Observers "willSet" "didSet"
        let stepCounter = StepCounter()
        stepCounter.totalSteps = 200
        // About to set totalSteps to 200
        // Added 200 steps
        stepCounter.totalSteps = 360
        // About to set totalSteps to 360
        // Added 160 steps
        stepCounter.totalSteps = 896
        // About to set totalSteps to 896
        // Added 536 steps
    }
    
    struct AudioChannel {
        static let thresholdLevel = 10
        static var maxInputLevelForAllChannels = 0
        var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                // cap the new audio level to the threshold level
                currentLevel = AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                // store this as the new overall maximum input level
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
        }
    }
    
  
    func combinedProperties(){
        var leftChannel = AudioChannel()
        var rightChannel = AudioChannel()
       //If you set the currentLevel of the left channel to 7, you can see that the maxInputLevelForAllChannels type property is updated to equal 7:
        leftChannel.currentLevel = 7
        println(leftChannel.currentLevel)
        // prints "7"
        println(AudioChannel.maxInputLevelForAllChannels)
        // prints "7"
       
    }
    
    //folowoing class "Counter" is related to "workingWithMethods()"
    class Counter {
        var count = 0
        func increment() {
            count++
        }
        func incrementBy(amount: Int) {
            count += amount
        }
        
        func incrementBy(amount: Int, numberOfTimes: Int) {
            count += amount * numberOfTimes
        }
 
// If dont want to show external parameter
//        func incrementBy(amount: Int, _ numberOfTimes: Int) {
//            count += amount * numberOfTimes
//        }
        
        func reset() {
            count = 0
        }
    }
    
    // folowing structure "levelTracker" and class "Player" are related to "concludedConceptOfMethods"
    struct LevelTracker {
        static var highestUnlockedLevel = 1
        
        static func unlockLevel(level: Int) {
            if level > highestUnlockedLevel { highestUnlockedLevel = level }
        }
        static func levelIsUnlocked(level: Int) -> Bool {
            return level <= highestUnlockedLevel
        }
        var currentLevel = 1
        mutating func advanceToLevel(level: Int) -> Bool {
            if LevelTracker.levelIsUnlocked(level) {
                currentLevel = level
                return true
            } else {
                return false
            }
        }
    }
    
    class Player {
        var tracker = LevelTracker()
        let playerName: String
        func completedLevel(level: Int) {
            LevelTracker.unlockLevel(level + 1)
            tracker.advanceToLevel(level + 1)
        }
        init(name: String) {
            playerName = name
        }
    }
    
    
    func concludedConceptOfMethods(){
        var player = Player(name: "Argyrios")
        player.completedLevel(1)
        println("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
        // prints "highest unlocked level is now 2
        
        player = Player(name: "Beto")
        if player.tracker.advanceToLevel(6) {
            println("player is now on level 6")
        } else {
            println("level 6 has not yet been unlocked")
        }
        // prints "level 6 has not yet been unlocked”
    }
    
    //main function for the concept of methods
    func workingWithMethods(){
        //instance Methods
        let counter = Counter()
        // the initial counter value is 0
        println("the initial counter value is \(counter.count)")
        counter.increment()
        // the counter's value is now 1
        println("the counter's value is now \(counter.count)")
        counter.incrementBy(5)
        // the counter's value is now 6
        println("the counter's value is now \(counter.count)")
        counter.reset()
        // the counter's value is now 0
        println("the counter's value is now \(counter.count)")
        counter.incrementBy(5, numberOfTimes: 3)
        // counter value is now 15
        
        
        //Modifying Value Types from Within Instance Methods
        struct Point {
            var x = 0.0, y = 0.0
            mutating func moveByX(deltaX: Double, y deltaY: Double) {
                x += deltaX
                y += deltaY
            }
        }
        var somePoint = Point(x: 1.0, y: 1.0)
        somePoint.moveByX(2.0, y: 3.0)
        println("The point is now at (\(somePoint.x), \(somePoint.y))")
        // prints "The point is now at (3.0, 4.0)


        //Modifyng Value Types from Within Instance Methods with self value
        struct otherPoint {
            var x = 0.0, y = 0.0
            mutating func moveByX(deltaX: Double, y deltaY: Double) {
                self = otherPoint(x: x + deltaX, y: y + deltaY)
            }
        }
        
        
        //Mutating methods for enumerations can set the implicit self parameter to be a different member from the same enumeration
        enum TriStateSwitch {
            case Off, Low, High
            mutating func next() {
                switch self {
                case Off:
                    self = Low
                case Low:
                    self = High
                case High:
                    self = Off
                }
            }
        }
        var ovenLight = TriStateSwitch.Low
        ovenLight.next()
        // ovenLight is now equal to .High
        ovenLight.next()
        // ovenLight is now equal to .Off
        
       //folowing method is good example covering all method's concepts - type properties, type methods, modifying value type in instance method
        concludedConceptOfMethods()
    }
    
    //this Matrix structure is related to "workingWithSubsript()" for showing multiple parameter types
    struct Matrix {
        let rows: Int, columns: Int
        var grid: [Double]
        init(rows: Int, columns: Int) {
            self.rows = rows
            self.columns = columns
            grid = Array(count: rows * columns, repeatedValue: 0.0)
        }
        func indexIsValidForRow(row: Int, column: Int) -> Bool {
            return row >= 0 && row < rows && column >= 0 && column < columns
        }
        
        
        
        subscript(row: Int, column: Int) -> Double {
            get {
                assert(indexIsValidForRow(row, column: column), "Index out of range")
                return grid[(row * columns) + column]
            }
            set {
                assert(indexIsValidForRow(row, column: column), "Index out of range")
                grid[(row * columns) + column] = newValue
            }
        }
    }

    
    func workingWithSubsript(){
        //subscription
        struct TimesTable {
            let multiplier: Int
            subscript(index: Int) -> Int {
                return multiplier * index
            }
        }
        let threeTimesTable = TimesTable(multiplier: 3)
        println("six times three is \(threeTimesTable[6])")
        // prints "six times three is 18”
        
        //subscription with multiple values
        var matrix = Matrix(rows: 2, columns: 2)
        matrix[0, 1] = 1.5     //they are setting value as per setter is written for matrix subscription
        matrix[1, 0] = 3.2     //they are setting value as per setter is written for matrix subscription
        let someValue = matrix[1, 0] // matrix[2, 2] put  this see exception Index out of range: with your file name
        // this triggers an assert, because [2, 2] is outside of the matrix bounds
        
    }
    
    
    
   //Folowoing classes Vehicle Bicycle Tandem are releated to "workingWithInheritence()"
    class Vehicle {  //base class
        var numberOfWheels: Int
        var maxPassengers: Int
        func description() -> String {
            return "\(numberOfWheels) wheels; up to \(maxPassengers) passengers"
        }
        init() {
            numberOfWheels = 0
            maxPassengers = 1
        }
    }
    
    class Bicycle: Vehicle {
        override init() {
            super.init()
            numberOfWheels = 2
        }
    }
    
    class Tandem: Bicycle {
        override init() {
            super.init()
            maxPassengers = 2
        }
    }
    
    class Car: Vehicle {
        var speed: Double = 0.0
        override init() {
            super.init()
            maxPassengers = 5
            numberOfWheels = 4
        }
        
        
        override func description() -> String {
            return super.description() + "; "
                + "traveling at \(speed) mph"
        }
    }
    
    
    class SpeedLimitedCar: Car {
        override var speed: Double  {
        get {
            return super.speed
        }
        set {
            super.speed = min(newValue, 40.0)
            //The min “which is a global function provided by the Swift standard library takes two or more values and returns the smallest one of those values.
        }
        }
    }
    
    
    class AutomaticCar: Car {
        var gear = 1
        override var speed: Double {  //Overriding Property observer
        didSet {
            gear = Int(speed / 10.0) + 1
        }
        }
        override func description() -> String {
            return super.description() + " in gear \(gear)"
        }
    }
    
    func workingWithInheritence(){
        //base class inherited by subclass
        let someVehicle = Vehicle()
        let bicycle = Bicycle()
        println("Bicycle: \(bicycle.description())")
        // Bicycle: 2 wheels; up to 1 passengers
        let tandem = Tandem()
        println("Tandem: \(tandem.description())")
        // Tandem: 2 wheels; up to 2 passengers

        //Overriding method description() in class "Car"
        let car = Car()
        println("Car: \(car.description())")
        // Car: 4 wheels; up to 5 passengers; traveling at 0.0 mph

        //Overriding property speed by using getter and setter
        let limitedCar = SpeedLimitedCar()
        limitedCar.speed = 60.0
        println("SpeedLimitedCar: \(limitedCar.description())")
        // SpeedLimitedCar: 4 wheels; up to 5 passengers; traveling at 40.0 mph

        //Overriding Property observer
        let automatic = AutomaticCar()
        automatic.speed = 35.0
        println("AutomaticCar: \(automatic.description())")
        // AutomaticCar: 4 wheels; up to 5 passengers; traveling at 35.0 mph in gear 4
    }
    
    
    //following "Size" "Point" "Rect" is related to workingWithInitialization()
    struct Size {
        var width = 0.0, height = 0.0
    }
    struct Point {
        var x = 0.0, y = 0.0
    }
    
    struct Rect {
        var origin = Point()
        var size = Size()
        init() {}
        init(origin: Point, size: Size) {
            self.origin = origin
            self.size = size
        }
        init(center: Point, size: Size) { //Initializer Delegation for Value Types
            let originX = center.x - (size.width / 2)
            let originY = center.y - (size.height / 2)
            self.init(origin: Point(x: originX, y: originY), size: size)
        }
    }
    
    //working with initializations
    func workingWithInitialization(){
        let basicRect = Rect()
        // basicRect's origin is (0.0, 0.0) and its size is (0.0, 0.0)
        let originRect = Rect(origin: Point(x: 2.0, y: 2.0),
            size: Size(width: 5.0, height: 5.0))
        // originRect's origin is (2.0, 2.0) and its size is (5.0, 5.0)
        // Initializer Delegation for Value Types
            let centerRect = Rect(center: Point(x: 4.0, y: 4.0),size: Size(width: 3.0, height: 3.0))
        // centerRect's origin is (2.5, 2.5) and its size is (3.0, 3.0)
        
    }
    
    //following class "Food", "RecipeIngredient" and "ShoppingListItem"  related to workingWithConvenienceAndDesignated()
    class Food {
        var name: String
        init(name: String) { //designated initializer
            self.name = name
        }
        convenience init() { //convenience initializer
            self.init(name: "[Unnamed]")
        }
    }
    
    class RecipeIngredient: Food {
        var quantity: Int
        init(name: String, quantity: Int) { //designated initializer
            self.quantity = quantity
            super.init(name: name)
            //super.name = "abcd"
            
        }
        convenience override init(name: String) { //convenience initializer
            self.init(name: name, quantity: 1)
        }
    }
   
    class ShoppingListItem: RecipeIngredient { //inheriting all super class' initializers
        var purchased = false
        var description: String {
        var output = "\(quantity) x \(name.lowercaseString)"
            output += purchased ? " ✔" : " ✘"
            return output
        }
    }
    
    func workingWithConvenienceAndDesignatedInitializer(){
        let namedMeat = Food(name: "Bacon")
        // namedMeat's name is "Bacon”
        
        let mysteryMeat = Food()
        // mysteryMeat's name is "[Unnamed]
        
        //All three of these initializers can be used to create new RecipeIngredient instances:
        let oneMysteryItem = RecipeIngredient()
        let oneBacon = RecipeIngredient(name: "Bacon")
        let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)
        
        
        //ShoppingListItem does not define an initializer to provide an initial value for purchased, because items in a shopping list (as modeled here) always start out unpurchased.
        var breakfastList = [
            ShoppingListItem(),
            ShoppingListItem(name: "Bacon"),
            ShoppingListItem(name: "Eggs", quantity: 6),
        ]
        breakfastList[0].name = "Orange juice"
        breakfastList[0].purchased = true
        for item in breakfastList {
            println(item.description)
        }
        // 1 x orange juice ✔
        // 1 x bacon ✘
        // 6 x eggs ✘
    }
    
    //following checkerboard is related with settingDefaultPropertyValueWithClosure()
    struct Checkerboard {
        var sampleProperty = 100
        let boardColors: [Bool] = {
            var temporaryBoard = [Bool]()
            var isBlack = false
            for i in 1...10 {
                for j in 1...10 {
                    temporaryBoard.append(isBlack)
                    isBlack = !isBlack
                }
                isBlack = !isBlack
            }
            return temporaryBoard
            }()
        func squareIsBlackAtRow(row: Int, column: Int) -> Bool {
            return boardColors[(row * 10) + column]
        }
    }
   
    func settingDefaultPropertyValueWithClosure(){
        let board = Checkerboard()
        println(board.squareIsBlackAtRow(0, column: 1))
        // prints "true"
        println(board.squareIsBlackAtRow(9, column: 9))
        // prints "false”
    }
    
    //following Bank and GamePlayer classes related workingWithDeInitializer()
    struct Bank {
        static var coinsInBank = 10_000
        static func vendCoins(var numberOfCoinsToVend: Int) -> Int {
            numberOfCoinsToVend = min(numberOfCoinsToVend, coinsInBank)
            coinsInBank -= numberOfCoinsToVend
            return numberOfCoinsToVend
        }
        static func receiveCoins(coins: Int) {
            coinsInBank += coins
        }
    }
    
    
    class GamePlayer {
        var coinsInPurse: Int
        init(coins: Int) {
            coinsInPurse = Bank.vendCoins(coins)
        }
        func winCoins(coins: Int) {
            coinsInPurse += Bank.vendCoins(coins)
        }
        deinit {
            Bank.receiveCoins(coinsInPurse)
        }
    }
    

    
    func workingWithDeInitializer(){
        var playerOne: GamePlayer? = GamePlayer(coins: 100)
        println("A new player has joined the game with \(playerOne!.coinsInPurse) coins")
        // prints "A new player has joined the game with 100 coins"
        println("There are now \(Bank.coinsInBank) coins left in the bank")
        // prints "There are now 9900 coins left in the bank
        
        playerOne!.winCoins(2_000)
        println("PlayerOne won 2000 coins & now has \(playerOne!.coinsInPurse) coins")
        // prints "PlayerOne won 2000 coins & now has 2100 coins"
        println("The bank now only has \(Bank.coinsInBank) coins left")
        // prints "The bank now only has 7900 coins left
        
        //Here, the player has won 2,000 coins. The player’s purse now contains 2,100 coins, and the bank has only 7,900 coins left.
        playerOne = nil
        println("PlayerOne has left the game")
        // prints "PlayerOne has left the game"
        println("The bank now has \(Bank.coinsInBank) coins")
        // prints "The bank now has 10000 coins

    }
    
    class Person {
        let name: String
        init(name: String) {
            self.name = name
            println("\(name) is being initialized")
        }
        deinit {
            println("\(name) is being deinitialized")
        }
    }

    func workingWithARC(){
        var reference1: Person?
        var reference2: Person?
        var reference3: Person?
        
        reference1 = Person(name: "John Appleseed")
        // prints "John Appleseed is being initialized
        
        reference2 = reference1
        reference3 = reference1
        
        reference1 = nil
        reference2 = nil
        
        //ARC does not deallocate the Person instance until the third and final strong reference is broken, at which point it is clear that you are no longer using the Person instance:
        
        reference3 = nil
        // prints "John Appleseed is being deinitialized

    }
    
    //following two PersonIndividual and Apartment are related to strongRefenceCycleCase()
    class PersonIndividual {
        let name: String
        init(name: String) { self.name = name }
        var apartment: Apartment?
        deinit { println("\(name) is being deinitialized") }
    }
    
    class Apartment {
        let number: Int
        init(number: Int) { self.number = number }
        //var tenant: PersonIndividual?
        weak var tenant: PersonIndividual?  //solution to resolve strongRefenceCycleCase
        deinit { println("Apartment #\(number) is being deinitialized") }
    }

    func strongRefenceCycleCaseSolvedByWeak(){
        var john: PersonIndividual?
        var number73: Apartment?
        
        john = PersonIndividual(name: "John Appleseed")
        number73 = Apartment(number: 73)
        
        john!.apartment = number73
        number73!.tenant = john
        
        john = nil
        number73 = nil
   
        //println("\(john!.name)")
        
        //Note that neither deinitializer was called when you set these two variables to nil. The strong reference cycle prevents the Person and Apartment instances from ever being deallocated, causing a memory leak in your app.
        
    }
    
    //following Customer and CreditCard classes belongs to strongRefenceCycleCase2()
    class Customer {
        let name: String
        var card: CreditCard?
        init(name: String) {
            self.name = name
        }
        deinit { println("\(name) is being deinitialized") }
    }
    
    class CreditCard {
        let number: Int
        unowned let customer: Customer
        init(number: Int, customer: Customer) {
            self.number = number
            self.customer = customer
        }
        deinit { println("Card #\(number) is being deinitialized") }
    }

    
    func strongRefenceCycleCaseSolvedByUnowned(){
        var john: Customer?
        john = Customer(name: "John Appleseed")
        john!.card = CreditCard(number: 1234_5678_9012_3456, customer: john!)
        //The Customer instance now has a strong reference to the CreditCard instance, and the CreditCard instance has an unowned reference to the Customer instance.

        //Because of the unowned customer reference, when you break the strong reference held by the john variable, there are no more strong references to the Customer instance:
        john = nil
        // prints "John Appleseed is being deinitialized"
        // prints "Card #1234567890123456 is being deinitialized”

    }
    
    //following Country and City is related strongRefenceCycleCaseSolvedByUnownedReferencesAndImplicitlyUnwrappedOptional ()
    class Country {
        let name: String
        let capitalCity: City!  // <--- Implicitly Unwrapped optional propertiy initialized “nil”
        init(name: String, capitalName: String) {
            self.name = name
            self.capitalCity = City(name: capitalName, country: self)    // <---- Note here, remember  Two-Phase Initialization. country is not initialiezed completely and you are accessing “self” instance
        }
    }
    
        //here  due to Implicitly Unwrapped optional propertiy capitalCity just by taking  name  and initially taking self.capitalCity as nil it will initialize Country and after initialization it gives reference to self.capitalCity.
        
        class City {
            let name: String
            unowned let country: Country
            init(name: String, country: Country) {
                self.name = name
                self.country = country
            }
        }


    func strongRefenceCycleCaseSolvedByUnownedReferencesAndImplicitlyUnwrappedOptional (){ //name is bit long but self explaining
        var country = Country(name: "Canada", capitalName: "Ottawa")  //<---you are able to initialized
        println("\(country.name)'s capital city is called \(country.capitalCity.name)")
        // prints "Canada's capital city is called Ottawa”
       // NOTE: If you don’t take  capitalCity: City!  as  Implicitly Unwrapped optional propertiy there could be crash problem. beacouse we have to satisfy two-phase class initializer requirements.

    }
    
    //following HTMLElement class is related to
    class HTMLElement {
        
        let name: String
        let text: String?
        
        lazy var asHTML: () -> String = {
            [unowned self] in //neither the HTMLElement instance nor its closure are deallocated,  if you dont use capture list in closure with unowned keyowrd followed by self instance which is to be caputred
            if let text = self.text {
                return "<\(self.name)>\(text)</\(self.name)>" // <----using self since it is not initialized fully
            } else {
                return "<\(self.name) />"
            }
        }
        
        init(name: String, text: String? = nil) {
            self.name = name
            self.text = text
        }
        
        deinit {
            println("\(name) is being deinitialized")
        }
        
    }
    
    func strongRefenceCycleCaseSolvedWithClosure(){
        var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello, world")
        println(paragraph!.asHTML())
        // prints "<p>hello, world</p>”
        
        paragraph = nil //neither the HTMLElement instance nor its closure are deallocated,  if you dont use capture list in closure with unowned keyowrd followed by self instance which is to be caputred
    }
    
    //Following PersonAny Residency Room Address are used in  workingWithOptionalChaining()
    class PersonAny {
        var residence: Residence?
    }
    class Residence {
        var rooms = [Room]()
        var numberOfRooms: Int {
        return rooms.count
        }
        subscript(i: Int) -> Room {
            return rooms[i]
        }
        func printNumberOfRooms() {
            println("The number of rooms is \(numberOfRooms)")
        }
        var address: Address?
    }
    
    class Room {
        let name: String
        init(name: String) { self.name = name }
    }
    
    class Address {
        var buildingName: String?
        var buildingNumber: String?
        var street: String?
        func buildingIdentifier() -> String? {
            if (buildingName != nil) {
                return buildingName
            } else if (buildingNumber != nil) {
                return buildingNumber
            } else {
                return nil
            }
        }
    }
    
    func workingWithOptionalChaining(){
        //Calling Properties Through Optional Chaining
        let john = PersonAny()
        if let roomCount = john.residence?.numberOfRooms {
            println("John's residence has \(roomCount) room(s).")
        } else {
            println("Unable to retrieve the number of rooms.")
        }
        // prints "Unable to retrieve the number of rooms.”
        
        
        //Calling Methods Through Optional Chaining
        if (john.residence?.printNumberOfRooms() != nil) { //<--- returns optional Void
            println("It was possible to print the number of rooms.")
        } else {
            println("It was not possible to print the number of rooms.")
        }
        // prints "It was not possible to print the number of rooms.”
        
        
        //Calling Subscripts Through Optional Chaining
        if let firstRoomName = john.residence?[0].name { // returns optional string
            println("The first room name is \(firstRoomName).")
        } else {
            println("Unable to retrieve the first room name.")
        }
        // prints "Unable to retrieve the first room name.”
        let johnsHouse = Residence()
        johnsHouse.rooms.append(Room(name: "Living Room"))
        johnsHouse.rooms.append(Room(name: "Kitchen"))
        john.residence = johnsHouse
        
        if let firstRoomName = john.residence?[0].name {
            println("The first room name is \(firstRoomName).")
        } else {
            println("Unable to retrieve the first room name.")
        }
        // prints "The first room name is Living Room.”
        
        
        //Linking Multiple Levels of Chaining
        if let johnsStreet = john.residence?.address?.street { // <---return Optional String
            println("John's street name is \(johnsStreet).")
        } else {
            println("Unable to retrieve the address.")
        }
        // prints "Unable to retrieve the address.
        let johnsAddress = Address()
        johnsAddress.buildingName = "The Larches"
        johnsAddress.street = "Laurel Street"
        john.residence!.address = johnsAddress
        
        if let johnsStreet = john.residence?.address?.street {
            println("John's street name is \(johnsStreet).")
        } else {
            println("Unable to retrieve the address.")
        }
        // prints "John's street name is Laurel Street.”
        
        //Chaining on Methods With Optional Return Values
        if let buildingIdentifier = john.residence?.address?.buildingIdentifier() {//<--- returns Optional string
            println("John's building identifier is \(buildingIdentifier).")
        }
        // prints "John's building identifier is The Larches.”
        
        //If you want to perform further optional chaining on this method’s return value, place the optional chaining question mark after the method’s parentheses:
        if let upper = john.residence?.address?.buildingIdentifier()?.uppercaseString {
            println("John's uppercase building identifier is \(upper).")
        }
        // prints "John's uppercase building identifier is THE LARCHES.”
    }
    
    //Following MediaItem Movie Song are related to workingWithTypeCast()
    class MediaItem {
        var name: String
        init(name: String) {
            self.name = name
        }
    }
    
    class Movie: MediaItem {
        var director: String
        init(name: String, director: String) {
            self.director = director
            super.init(name: name)
        }
    }
    
    class Song: MediaItem {
        var artist: String
        init(name: String, artist: String) {
            self.artist = artist
            super.init(name: name)
        }
    }

    func workingWithTypeCast(){
        let library = [
            Movie(name: "Casablanca", director: "Michael Curtiz"),
            Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
            Movie(name: "Citizen Kane", director: "Orson Welles"),
            Song(name: "The One And Only", artist: "Chesney Hawkes"),
            Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
        ]
        // the type of "library" is inferred to be MediaItem[]

        //checking type using "is" operator 
        var movieCount = 0
        var songCount = 0
        
        for item in library {
            if item is Movie { //<---- Checking if item is the type of Movie
                ++movieCount
            } else if item is Song { //<---- Checking if item is the type of Song
                ++songCount
            }
        }
        println("Media library contains \(movieCount) movies and \(songCount) songs")
        // prints "Media library contains 2 movies and 3 songs”
        
        
        //Look how Downcasting is done in swift using "as" operator (if you use as? it returns type optional value)
        for item in library {
            if let movie = item as? Movie { //The result of item as Movie is of type Movie?, or “optional Movie”
                println("Movie: '\(movie.name)', dir. \(movie.director)") //if successful can access as native instance
            } else if let song = item as? Song {
                println("Song: '\(song.name)', by \(song.artist)")
            }
        }
        // Movie: 'Casablanca', dir. Michael Curtiz
        // Song: 'Blue Suede Shoes', by Elvis Presley
        // Movie: 'Citizen Kane', dir. Orson Welles
        // Song: 'The One And Only', by Chesney Hawkes
        // Song: 'Never Gonna Give You Up', by Rick Astley
        //NOTE:
        //Casting does not actually modify the instance or change its values. The underlying instance remains the same; it is simply treated and accessed as an instance of the type to which it has been cast.
    }
    
    func workingWithAnyObject(){
        let someObjects: [AnyObject] = [
            Movie(name: "2001: A Space Odyssey", director: "Stanley Kubrick"),
            Movie(name: "Moon", director: "Duncan Jones"),
            Movie(name: "Alien", director: "Ridley Scott")
        ]
        for object : AnyObject in someObjects {
            let movie = object as Movie //downcasting to Optional Movie
            println("Movie: '\(movie.name)', dir. \(movie.director)")
        }
        // Movie: '2001: A Space Odyssey', dir. Stanley Kubrick
        // Movie: 'Moon', dir. Duncan Jones
        // Movie: 'Alien', dir. Ridley Scott
        
        for movie in someObjects as [Movie] { //it downcasts all someObjects as the array of Movie type elements
            println("Movie: '\(movie.name)', dir. \(movie.director)")
        }
        // Movie: '2001: A Space Odyssey', dir. Stanley Kubrick
        // Movie: 'Moon', dir. Duncan Jones
        // Movie: 'Alien', dir. Ridley Scott”
    }
    
    func workingWithAny(){
        var things = [Any]()
        
        things.append(0)
        things.append(0.0)
        things.append(42)
        things.append(3.14159)
        things.append("hello")
        things.append((3.0, 5.0))
        things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
        
        for thing in things {
            switch thing {
            case 0 as Int:
                println("zero as an Int")
            case 0 as Double:
                println("zero as a Double")
            case let someInt as Int:
                println("an integer value of \(someInt)")
            case let someDouble as Double where someDouble > 0:
                println("a positive double value of \(someDouble)")
            case is Double:
                println("some other double value that I don't want to print")
            case let someString as String:
                println("a string value of \"\(someString)\"")
            case let (x, y) as (Double, Double):
                println("an (x, y) point at \(x), \(y)")
            case let movie as Movie:
                println("a movie called '\(movie.name)', dir. \(movie.director)")
            default:
                println("something else")
            }
        }
        
        // zero as an Int
        // zero as a Double
        // an integer value of 42
        // a positive double value of 3.14159
        // a string value of "hello"
        // an (x, y) point at 3.0, 5.0
        // a movie called 'Ghostbusters', dir. Ivan Reitman”
        //NOTE:
        //The cases of a switch statement use the forced version of the type cast operator (as, not as?) to check and cast to a specific type. This check is always safe within the context of a switch case statement.
    }
    
    //following BlackjackCard is related to workingWithNestedTypes()
    struct BlackjackCard {
        // nested Suit enumeration
        enum Suit: Character {
            case Spades = "♠", Hearts = "♡", Diamonds = "♢", Clubs = "♣"
        }
        
        // nested Rank enumeration
        enum Rank: Int {
            case Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten
            case Jack, Queen, King, Ace
            struct Values {
                let first: Int, second: Int?
            }
            var values: Values {
            switch self {
            case .Ace:
                return Values(first: 1, second: 11)
            case .Jack, .Queen, .King:
                return Values(first: 10, second: nil)
            default:
                return Values(first: self.rawValue, second: nil)
                }
            }
        }
        
        // BlackjackCard properties and methods
        let rank: Rank, suit: Suit
        var description: String {
        var output = "suit is \(suit.rawValue),"
            output += " value is \(rank.values.first)"
            if let second = rank.values.second {
                output += " or \(second)"
            }
            return output
        }
    }
    
    func workingWithNestedTypes(){
        let theAceOfSpades = BlackjackCard(rank: .Ace, suit: .Spades)
        println("theAceOfSpades: \(theAceOfSpades.description)")
        // prints "theAceOfSpades: suit is ♠, value is 1 or 11”
        
        //Referring to Nested Types
        let heartsSymbol = BlackjackCard.Suit.Hearts.rawValue
        // heartsSymbol is "♡”
    }
    
    
    
    func computedPropertiesExtension(){
        let oneInch = 25.4.mm
        println("One inch is \(oneInch) meters")
        // prints "One inch is 0.0254 meters"
        let threeFeet = 3.ft
        println("Three feet is \(threeFeet) meters")
        // prints "Three feet is 0.914399970739201 meters"
        let aMarathon = 42.km + 195.m
        println("A marathon is \(aMarathon) meters long")
        // prints "A marathon is 42195.0 meters long"
    }
    
    struct SizeShape {
        var width = 0.0, height = 0.0
    }
    struct PointShape {
        var x = 0.0, y = 0.0
    }
    struct RectShape {
        var origin = PointShape()//difault Initializer
        var size = SizeShape()//difault Initializer
    }
    
    func initializerExtension(){//getting problem for in extension
        let defaultRect = RectShape()//difault Initializer
        let memberwiseRect = RectShape(origin: PointShape(x: 2.0, y: 2.0), size: SizeShape(width: 5.0, height: 5.0))
    }

    func methodExtension(){
        3.repetitions({
            println("Hello!")
            })
        // Hello!
        // Hello!
        // Hello!
        //or
        3.repetitions {
            println("Goodbye!")
        }
        // Goodbye!
        // Goodbye!
        // Goodbye!
        
    }
    
    func mutatingInstanceMethodExtension(){
        var someInt = 3
        someInt.square()
        // someInt is now 9
    }
    func subscriptExtension(){
        746381295[0]
        // returns 5
        746381295[1]
        // returns 9
        746381295[2]
        // returns 2
        746381295[8]
        // returns 7
        
        746381295[9]
        // returns 0, as if you had requested:
        0746381295[9]

    }
    
    func printLetterKinds(word: String) {
        println("'\(word)' is made up of the following kinds of letters:")
        for character in word {
            switch character.kind {
            case .Vowel:
                print("vowel ")
            case .Consonant:
                print("consonant ")
            case .Other:
                print("other ")
            }
        }
        print("\n")
    }

    
    func nestedTypeExtension(){
        printLetterKinds("Hello")
        // 'Hello' is made up of the following kinds of letters:
        // consonant vowel consonant consonant vowel
    }
    
    //following class is related to Starship
    class Starship: FullyNamed {
        var prefix: String?
        var name: String
        init(name: String, prefix: String? = nil) {
            self.name = name
            self.prefix = prefix
        }
        var fullName: String {
        return prefix ?? "" + name //(prefix != nil ? prefix! + " " : "") + name  this also works same with nil coalition operator
        }
    }
    
    func workingWithProtocols(){
        struct Person: FullyNamed {
            var fullName: String
        }
        let john = Person(fullName: "John Appleseed")
        // john.fullName is "John Appleseed"
        
        //in class as well
        var ncc1701 = Starship(name: "Enterprise", prefix: "USS")
        // ncc1701.fullName is "USS Enterprise"
    }
    
     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
//beacouse extension declaration is valid in file scope  this is related to computedPropertiesExtension()
extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

//extension RectShape {
//    init(center: PointShape, size: SizeShape) {
//        let originX = center.x - (size.width / 2)
//        let originY = center.y - (size.height / 2)
//        self.init(origin: PointShape(x: originX, y: originY), size: size)
//    }
//}
extension Int {
    func repetitions(task: () -> ()) {
        for i in 0..<self {
            task()
        }
    }
}

extension Int {
    mutating func square() {
        self = self * self
    }
}

extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
            for _ in 0...digitIndex {
                decimalBase *= 10
            }
            return (self / decimalBase) % 10
    }
}

extension Character {
    enum Kind {
        case Vowel, Consonant, Other
    }
    var kind: Kind {
    switch String(self).lowercaseString {
    case "a", "e", "i", "o", "u":
        return .Vowel
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
    "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
        return .Consonant
    default:
        return .Other
        }
    }
}

protocol SomeProtocol {
    var mustBeSettable: Int { get set } //always use var
    var doesNotNeedToBeSettable: Int { get }
}

protocol AnotherProtocol { // always use class even if type property is of structure
    class var someTypeProperty: Int { get set }
}

protocol FullyNamed {
    var fullName: String { get }
}
