//
//  ContentView.swift
//  Africa Experience
//
//  Created by Leo Merelo on 8/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            List {
              CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }//: LIST
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
        }//:NAVIGATION
    }
}

#Preview {
    ContentView()
}
