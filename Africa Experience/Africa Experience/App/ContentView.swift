//
//  ContentView.swift
//  Africa Experience
//
//  Created by Leo Merelo on 8/2/24.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    let animals: [Animal] = Bundle.main.decode("animals.json")
      
    //MARK: - BODY
    var body: some View {
        NavigationStack {
            List {
              CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals) { animal in
                    NavigationLink {
                        AnimalDetailView(animal: animal)
                    } label: {
                        AnimalListItemView(animal: animal) 
                    }

                }
            }//: LIST
            .navigationTitle("Africa")
            .listStyle(.plain)
            .navigationBarTitleDisplayMode(.large)
        }//:NAVIGATION
    }
}

#Preview {
    ContentView()
}
