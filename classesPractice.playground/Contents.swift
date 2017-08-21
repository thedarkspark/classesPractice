//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//testing testing 1,2,3
class Person {
    let name : String
    init (name : String) {
        self.name = name
    }
    func sayHello() {
        print ("Hello Dark Spark!")
    }
}

let person = Person (name: "The Dark Spark")
print (person.name)
person.sayHello()
//ok you can hear me, great
//Moving right along


//
//Super class and sub class practice
//


//this a base class. does not inherit from a parent/superclass
//Quick side note!! always create classes and structures with upper case and properties of them with lower case
class Vehicle {
    var currentSpeed = 0.0
    
    var description : String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        //do nothing as of now because vehicle could be any type of vehicle we want (i.e. bicycle or train)
    }
}

let someVehicle = Vehicle()
print ("Vehicle: \(someVehicle.description)")


//now lets make a subclass off this base class
class Bicycle : Vehicle {
    var hasBasket = false
}
//this class automatically inherits all properties and methods of Vehicle class
//in addition it defines a new boolean property hasBasket
//for a particular bike we can make it true though

let bicycle = Bicycle()
bicycle.hasBasket = true

//update the currentSpeed which will impact each instance

bicycle.currentSpeed = 15.0
print ("Bicycle: \(bicycle.description)")

//subclass of a subclass

class Tandem : Bicycle {
    var currentNumberOfPassengers = 0
}

//this class inherits the base class and the subclass above and also adds a new property
//lets create a new instance of Tandem

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print ("Tandem: \(tandem.description)")

//moving right along lets override that make noise function in the base class/superclass
//this is a custome implementation of the following property and function

class Train : Vehicle {
    override func makeNoise() {
        print ("Choo Choo!!")
    }
}

let train = Train()
train.makeNoise()

//ready to call it quits yet? nope? ok good lets keep going!
//below is a subclass of Vehicle class with new property and override of description property
//we are going to make it return a value/computed property providing info about the gear property

class Car : Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
        //computed property right there
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print ("Car: \(car.description)")





