//
//  InsetMapView.swift
//  Africa Experience
//
//  Created by Leo Merelo on 12/2/24.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    //MARK: - PROPERTIES
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2DMake(6.600286 , 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0 ))
    //MARK: - BODY
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: {
                    MapView()
                }, label: {
                    HStack {
                        Image(systemName: "mappin.circle ")
                            .foregroundStyle(.white)
                            .imageScale(.large)
                        Text("Locations")
                            .foregroundStyle(Color.accentColor)
                            .fontWeight(.bold)
                    }//HSTACK
                    .padding(.vertical,10)
                    .padding(.horizontal,14)
                    .background(Color.black.opacity(0.4))
                    .cornerRadius(8)
                })
                .padding(12), alignment: .topTrailing
            )
            .frame(height: 256)
            .cornerRadius(12)
    }
}

#Preview {
    InsetMapView()
        .padding()
}
