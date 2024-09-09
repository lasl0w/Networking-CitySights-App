//
//  Business.swift
//  CitySights App
//
//  Created by tom montgomery on 9/2/24.
//

import Foundation
// Identifiable so we can use it in a list
struct Business: Decodable, Identifiable {
    // declaring most as optional b/c we don't know what they will give us back
    var id: String?
    var alias: String?
    var categories: [Category]
    var coordinates: Coordinate
    var displayPhone: String?
    var distance: Double?
    var imageURL: String?
    var isClosed: Bool?
    var location: Location?
    var name: String?
    var phone: String?
    var price: String?
    var rating: Double?
    var reviewCount: Int?
    var url: String?
    // only add the props we need
    
    enum CodingKeys: String, CodingKey {
        // map the Yelp API name to our desired name
        case displayPhone = "display_phone"
        case isClosed = "is_closed"
        case imageURL = "image_url"
        case reviewCount = "review_count"
        
        case id
        case alias
        case categories
        case coordinates
        case distance
        case location
        case name
        case phone
        case price
        case rating
        case url
        
    }
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
    var displayAddress: [String]?
    var state: String?
    var zipCode: String?
    
    enum CodingKeys: String, CodingKey {
        case displayAddress = "display_address"
        case zipCode = "zip_code"
        
        case address1
        case address2
        case address3
        case city
        case country
        case state
    }
    
}
