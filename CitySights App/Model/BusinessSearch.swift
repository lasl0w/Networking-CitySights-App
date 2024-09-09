//
//  BusinessSearch.swift
//  CitySights App
//
//  Created by tom montgomery on 9/2/24.
//

import Foundation

struct BusinessSearch: Decodable {
    // going to use jsondecoder with it so must be Decodable
    var businesses = [Business]() // init to an empty array
    var region: Region?
}
// each search is centered on a region
struct Region: Decodable {
    var center: Coordinate?
}
// each region's center is a lat/long coordinate
struct Coordinate: Decodable {
    var latitude: Double?
    var longitutde: Double?
}
