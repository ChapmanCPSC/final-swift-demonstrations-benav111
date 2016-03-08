//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//optionals 
var name = Optional("Amanda")
var name2 : String? = "Amanda"

//no value so nil
var one : String?

//unwrap 

print(name!)

//compare

name! == name2!

//chaining
name?.uppercaseString

one?.uppercaseString

//class

class Person
{//class variables and functions
    class var name : String {
        get{
            return self.name
        }
        set(name)
        {
        
            self.name = name
        }
    }
    var traits = ["cool", "smart", "funny"]
    var age : Int
    init?(age: Int = 0)
    {//falliable initializer
        self.age = age
        
        if (age < 0 )
        {
            return nil
        }
    }
    
    class func SayName() {
        print("\(self.name)")
    }
    //subscript
    subscript(idx: Int)-> String {
        return traits[idx]
    }
    
}
//inheritance
class WhitePerson : Person
{
    override init?(age: Int)
    {
        super.init()
    }
    convenience init?()
    {
        self.init(age: 0)
    }
}

//enum
enum hairType : String{
    case long = "long"
    case short = "short"
    case medium = "medium"
    
    mutating func cutHair(name: String) {
        let nextHair = hairType(rawValue: "short")
        self = nextHair!
    }
}

let longHair = hairType.long

let hair = "short"

let hairyType = hairType(rawValue: hair)

let notHair = hairType(rawValue: "poop")

//struct

struct Animal
{
    var type : String
    var age: Int
}

var dog = Animal(type: "dog", age: 12)

struct yourStruct
{//static property
    static var property : String {
        get{
            return self.property
        }
        set(name)
        {
            self.property = name
        }
    }
}

//protocols

protocol Subject
{
    var name : String {get}
    func sayName()
}

class Swift : Subject
{
    var name : String = "CPSC"
    func sayName()
    {
        print(self.name)
    }
}
class English : Subject
{
    var name : String = "Humanities"
    func sayName()
    {
        print(self.name)
    }
}
func doSomething(s: Subject)
{
    print(" The name is: \(s.name)")
}

var swif = Swift()
var hum = English()

doSomething(swif)
doSomething(hum)

//umbrella types

func sayHi (obj: AnyObject){
    print("Hi")
}

func saybye(cls: AnyClass){
    print("Bye")
}
func say(an: Any)
{
    print("Said")
}

say(swif)
sayHi(swif)
saybye(Swift)

//extension
extension String{
    mutating func makeUpper() -> String
    {
        return self.uppercaseString
    }
}
var hey = "hey"
hey.makeUpper()

//switch

let hair2 : hairType = .long

switch hair2 {
    case .short:
        print("shorty")
    case .medium:
        print("medi")
    default:
        print("longy")
}

//ternary operators 
var two = 2
let tru = ( two < 2) ? "way true" : "way false"

//conditional binding

if let two : Int? = 0 where  2 < 3
{
    print("true!")
}
//while loop
while two == 2
{
    two = 1
    print("its two")
}
//for loop
outer: for two in 0...10
{//labled break
    print("found a 2")
    break outer
}

//array

let myArr : [Int] = [2,4,6,8]

let num : Array<Int> = [1,3,5,7,9]
//indexing
num[2]
//slicing
num[1...3]

//dictionary
var animals = [String : String]()
animals["Cow"] = "CowName"
animals["Cat"] = "CatName"
animals["Dog"] = "DogName"

//enumeration
let someAnimals = animals.filter { (title, name) -> Bool in
    return name.containsString("a")
}
// throwable types
let myError = NSError(domain: "com.grandpad", code: 1, userInfo: nil)

enum yourError: ErrorType
{
    case error1
    case error2
    case error3
}

func getError() throws
{// how to throw an error
        throw yourError.error1
}

//do catch construct

do {
    try getError()
}
catch yourError.error2 {
    //catches only error 2
    print("Caught error2")
}
catch let error as yourError
{//catches any type of your error
    print("caught \(error)")
}
catch{
    //catches any error
    print("THERE WAS AN UNSPECIFIED ERROR")
}





