//
//  InsetFactView.swift
//  Africa Experience
//
//  Created by Leo Merelo on 11/2/24.
//

import SwiftUI

struct InsetFactView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    //MARK: - BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }//TAB
            .tabViewStyle(.page)
            .frame(minWidth: 148, idealHeight: 168, maxHeight: 180)
        }//:BOX
    }
}

#Preview {
    InsetFactView(animal: Animal.animals[1])
        .padding()
}
