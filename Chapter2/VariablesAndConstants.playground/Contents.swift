//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Constants
let freezingTemperatureOfWaterCelsius = 0
let speedOfLightKmSec = 300000

//Variables
var currentTemperature = 22
var currentSpeed = 55

var predictedTemperature = 24, predictedSpeed = 45
print(predictedSpeed)

//speedOfLightKmSec = 299999 //This will generate compilation error as we are trying to change a constant here

//----------------Swift is type safe-------------//
var integerValue = 10 //Here integerValue is a Int
//integerValue = "My String" // This will generate compilation error as set string value to a Int type var which is not type safe



//------------Type Inference-----------//
var myInt = 1 //Here compiler infers that myInt has Int type
var x = 3.14 //Double type
var y = "Hello" //String type
var z = true //Bool type

//------------Explicit type specification-------------//
var a : Float = 3.14 //Now the var is Float type. If we had not specified the Float type inference would have made to Double type which is default
var b : Int //Here b does'nt have initial value assigned, so we need to explicitly give the type here