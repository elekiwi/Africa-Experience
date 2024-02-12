//
//  InsetGalleryView.swift
//  Africa Experience
//
//  Created by Leo Merelo on 10/2/24.
//

import SwiftUI

struct InsetGalleryView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 16) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 12)
                    )
                }//:LOO`
            }//:HSTACK
        }//:SCROLL
    }
}

#Preview {
    InsetGalleryView(animal: Animal.animals[1 ])
        .padding()
}
