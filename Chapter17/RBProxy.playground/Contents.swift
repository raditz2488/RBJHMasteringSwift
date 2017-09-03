//: Playground - noun: a place where people can play

import UIKit

protocol FloorPlanProtocol {
    var bedRooms: Int { get set }
    var utilityRooms: Int { get set }
    var bathRooms: Int { get set }
    var kitchen: Int { get set }
    var livingRooms: Int { get set }
}

struct FloorPlan: FloorPlanProtocol {
    var bedRooms = 0
    var utilityRooms = 0
    var bathRooms = 0
    var kitchen = 0
    var livingRooms = 0
}

class House {
    var stories = [FloorPlanProtocol]()
    
    func addStory(floorPlan: FloorPlanProtocol) {
        stories.append(floorPlan)
    }
}

class HouseProxy {
    var house = House()
    func addStory(floorPlan: FloorPlanProtocol) -> Bool {
        if house.stories.count < 3 {
            house.addStory(floorPlan: floorPlan)
            return true
        } else {
            return false
        }
    }
}