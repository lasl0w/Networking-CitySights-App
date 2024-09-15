//
//  TextHelper.swift
//  CitySights App
//
//  Created by tom montgomery on 9/15/24.
//

import Foundation

struct TextHelper {
    // make it a static func so we don't need to create an instance of the type in order to use it.  Aka - "Type Method"
    static func distanceAwayText(meters: Double) -> String {
        // static is nice if it doesn't need to keep track of data over time.  just input > convert > output
        if meters > 1000 {
            return "\(Int(meters/1000)) km away "
        }
        else {
            return "\(Int(meters)) m away"
        }
    }
    
    // TODO: func to round the ratings to the nearest .5
}
