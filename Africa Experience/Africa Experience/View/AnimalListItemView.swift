//
//  AnimalListItemView.swift
//  Africa Experience
//
//  Created by Leo Merelo on 10/2/24.
//

import SwiftUI

struct AnimalListItemView: View {
    //MARK: - PROPERTIES
    
    let animal: Animal
     
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16 ) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
            .frame(width: 90, height: 90)
            .clipShape(
                RoundedRectangle(cornerRadius: 12)
              )
            VStack(alignment: .leading, spacing: 8){
                Text(animal.name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(.accent )
                Text(animal.headline )
                    .font(.footnote )
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8  )
            }//:VSTACK
        }//:HSTACK
    }
}

let animals: [Animal] = Bundle.main.decode("animals.json")

#Preview {
   
    AnimalListItemView(animal: animals[1 ])
        .padding()
}
