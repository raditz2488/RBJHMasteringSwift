//: Playground - noun: a place where people can play

import UIKit

struct Hotel {
    //Information about hotel room
}

struct HotelBooking {
    static func getHotelNameForDates(to: NSDate, from: NSDate) -> [Hotel]? {
        let hotels = [Hotel]()
        //Logic to get hotels
        return hotels
    }
    
    static func bookHotel(hotel: Hotel) {
        //Logic to reserve hotel room
    }
}

struct Flight {
    //Information about flights
}

struct FlightBooking {
    static func getFlightNameForDates(to: NSDate, from: NSDate) -> [Flight]? {
        let flights = [Flight]()
        // Logic to get flights
        return flights
    }
    
    static func bookFlight(flight: Flight) {
        //Logic to reserve flight
    }
}

struct RentalCar {
    //Information about rental car
}

struct RentalCarBooking {
    static func getRentalCarNameForDates(to:NSDate, from: NSDate) -> [RentalCar]? {
        let cars = [RentalCar]()
        //logic to get rental cars
        return cars
    }
    
    static func bookRentalCar(rentalCar: RentalCar) {
        //Logic to reserve rental car
    }
}

class TravelFacade {
    var hotels: [Hotel]?
    var flights: [Flight]?
    var cars: [RentalCar]?
    
    init(to: NSDate, from: NSDate) {
        hotels = HotelBooking.getHotelNameForDates(to: to, from: from)
        flights = FlightBooking.getFlightNameForDates(to: to, from: from)
        cars = RentalCarBooking.getRentalCarNameForDates(to: to, from: from)
    }
    
    func bookTrip(hotel: Hotel, flight: Flight, rentalCar: RentalCar) {
        HotelBooking.bookHotel(hotel: hotel)
        FlightBooking.bookFlight(flight: flight)
        RentalCarBooking.bookRentalCar(rentalCar: rentalCar)
    }
}
