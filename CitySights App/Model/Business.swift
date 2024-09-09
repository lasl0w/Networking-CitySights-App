//
//  Business.swift
//  CitySights App
//
//  Created by tom montgomery on 9/2/24.
//

import Foundation

struct Business: Decodable {
    // declaring most as optional b/c we don't know what they will give us back
    var id: String?
    var alias: String?
    var categories: [Category]
    var coordinates: Coordinate
    var display_phone: String?
    var distance: Double?
    var image_url: String?
    var is_closed: Bool?
    var location: Location?
    var name: String?
    var phone: String?
    var price: String?
    var rating: Double?
    var review_count: Int?
    var url: String?
    
    // only add the props we need
}
struct Category: Decodable {
    var alias: String?
    var title: String?
}

struct Location: Decodable {
    var address1: String?
    var address2: String?
    var address3: String?
    var city: String?
    var country: String?
    var display_address: [String]?
}
