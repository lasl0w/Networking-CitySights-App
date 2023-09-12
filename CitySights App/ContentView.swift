//
//  ContentView.swift
//  CitySights App
//
//  Created by Chris Ching on 2023-09-12.
//

import SwiftUI

struct ContentView: View {
    
    @State var query: String = ""
    
    var body: some View {
        HStack {
            TextField("What are you looking for?", text: $query)
                .textFieldStyle(.roundedBorder)
            Button {
                // TODO: Implement query
            } label: {
                Text("Go")
                    .padding(.horizontal)
                    .padding(.vertical, 10)
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
