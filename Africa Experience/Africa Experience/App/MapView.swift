//
//  MapView.swift
//  Africa Experience
//
//  Created by Leo Merelo on 8/2/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    //MARK: - PROPERTIES
     
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates =  CLLocationCoordinate2D(latitude: 6.600286, longitude:  16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion =  MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    //MARK: - BODY
    var body: some View {
        //MARK: - N1 BASIC MAP
        //Map(coordinateRegion: $region)
        
        //MARK: - N2 ADVANCED MAP
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            //(A) pin: old style (always static)
            //MapPin(coordinate: item.location, tint: .accentColor)
            //(B) Marker: new style (always static)
            //MapMarker(coordinate: item.location, tint: .accentColor)
            //(C) CUSTOM BASIC ANNOTATION (it could be interactive)
//            MapAnnotation(coordinate: item.location) {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32, height: 32, alignment: .center)
//                
//            }//:ANNOTATION  
            
            //(D) complex map annotation
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        }//:MAP
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                VStack(alignment: .leading, spacing: 3){
                    HStack {
                        Text("Latitude: ")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("Longitude: ")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        Spacer()
                        Text("\(region.center.longitude  )")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    }
                }
            }//HSTACK
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(
                    Color.black
                        .clipShape(.rect(cornerRadius: 8))
                        .opacity(0.6)
                )
                .padding(),
            alignment: .top
        )
    }
}

#Preview {
    MapView()
}
