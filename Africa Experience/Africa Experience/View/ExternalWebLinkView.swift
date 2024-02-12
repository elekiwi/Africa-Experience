//
//  ExternalWebLinkView.swift
//  Africa Experience
//
//  Created by Leo Merelo on 12/2/24.
//

import SwiftUI

struct ExternalWebLinkView: View {
    //MARK: - PROEPERTIES
    let animal: Animal
    //MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()

                Group {
                    Image(systemName: "arrow.up.right.square")
                  
                    
                    Link(destination: URL(string: animal.link)  ?? URL(string: "https://wikipedia.org")!, label: {
                        Text(animal.name)
                    })
                }
                .foregroundStyle(.accent)
            }
        }//:BOX
    }
}

#Preview {
    ExternalWebLinkView(animal: Animal.animals[1])
        .padding()
}
