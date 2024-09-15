//
//  ContentView.swift
//  CitySights App
//
//  Created by Chris Ching on 2023-09-12.
//

import SwiftUI

struct ContentView: View {
    
    @State var businesses = [Business]()
    @State var query: String = ""
    var service = DataService()
    
    var body: some View {
        VStack {
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
//            List (businesses) { b in
//                Text(b.name ?? "No name found")
//            }.listStyle(.plain)
            // .plain gets rid of the grey border
            List {
                // foreach gives more control than a regular list
                ForEach(businesses) {b in
                    // add 20 so they are at least even
                    // TODO: how do we reduce the default spacing at the top of each LI
                    VStack(spacing: 20) {
                        HStack(spacing: 0) {
                            Image("list-placeholder-image")
                                .padding(.trailing, 16)
                                // make the HStack spacing 0 so you can just add the exact element spacing from figm 16. clearer.
                            VStack(alignment: .leading) {
                                Text(b.name ?? "Name not found")
                                    .font(Font.system(size: 15))
                                // we know system font is SFPro which works well
                                    .bold()
                                // Int b/c we don't want decimals, round maybe redundant then
                                // but instead we'll use a helper function!
                                Text(TextHelper.distanceAwayText(meters: b.distance ?? 0))
                                    .font(Font.system(size: 16))
                                // so weird that foregroundStyle = text color.  i guess in the context of the element it makes sense.
                                    .foregroundStyle(Color(red: 67/255, green: 71/255, blue: 76/255))
                            }
                            Spacer()
                            Image("regular_\(b.rating ?? 0)")
                        }
                        Divider()
                        // by default all margins are 20
                    }
                }
                // get rid of the default divider - applies to the item, not the List itself
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
        }
        .onAppear(perform: {
            // Infodictionary is optional
            print(Bundle.main.infoDictionary!["API_KEY"] as? String)
           
        })
        .task {
            // Call yelp service - not passing any params yet
            businesses = await service.businessSearch()
        }
    }
}

#Preview {
    ContentView()
}
