//
//  DataService.swift
//  CitySights App
//
//  Created by tom montgomery on 8/29/24.
//

import Foundation

struct DataService {
    
    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func businessSearch() async {
        // if apiKey != nil, skip the rest of the guard
        guard apiKey != nil else {
            // else, don't make the call
            return
        }
        
        // 1 - create URL
        if let url = URL(string: "https://api.yelp.com/v3/businesses/search?latitude=39.334719&longitude=-108.00897&categories=restaurants&limit=10") {
            
            // 2 - create request
            var request = URLRequest(url: url)
            // could have just force unwrapped apikey too
            request.addValue("Bearer \(apiKey ?? "no key available")", forHTTPHeaderField: "Authorization")
            request.addValue("application/json", forHTTPHeaderField: "accept")
            
            // 3 - send request
            do {
                // it throws, so we have to wrap it in a do-catch block
               let (data, response) = try await URLSession.shared.data(for: request)
               // it returns a data/response tuple, so assign it accordingly
                
                print(data)
                print(response)
            }
            catch {
                print(error)
            }
          
        }
        

    }
    
}
