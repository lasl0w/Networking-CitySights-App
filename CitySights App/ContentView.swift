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
            TextField("What're you looking for?", text: $query)
                .textFieldStyle(.roundedBorder)
            Button {
                // TODO: Implement query
            } label: {
                Text("Go")
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
