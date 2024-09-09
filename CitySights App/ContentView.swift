//
//  ContentView.swift
//  CitySights App
//
//  Created by Chris Ching on 2023-09-12.
//

import SwiftUI

struct ContentView: View {
    
    @State var query: String = ""
    var service = DataService()
    
    var body: some View {
        HStack {
            TextField("What are you looking for?", text: $query)
            Button {
                // TODO: Implement query
            } label: {
                Text("Go")
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .onAppear(perform: {
            // Infodictionary is optional
            print(Bundle.main.infoDictionary!["API_KEY"] as? String)
           
        })
        .task {
            // Call yelp service - not passing any params yet
            let businesses = await service.businessSearch()
        }
    }
}

#Preview {
    ContentView()
}
