//
//  LocationModel.swift
//  Africa Experience
//
//  Created by Leo Merelo on 13/2/24.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    //computed property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude  )
    }
    
    static let locations: [NationalParkLocation]  = Bundle.main.decode("locations.json")
}
