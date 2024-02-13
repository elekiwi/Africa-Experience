//
//  VideoListView.swift
//  Africa Experience
//
//  Created by Leo Merelo on 8/2/24.
//

import SwiftUI

struct VideoListView: View {
    //MARK: - PROPERTIES
    
    @State var videos: [Video] = Video.videos
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    //MARK: - BODY
    var body: some View {
        NavigationStack {
            List(videos) { item in
                NavigationLink(destination: {
                    VideoPlayerView(videoSelected: item.id, videoTitle: item.name
                    )
                }, label: {
                    VideoListItemView(video: item)
                })
             }//LIST
            .navigationTitle("Videos")
            .toolbarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }, label: {
                        Image(systemName: "arrow.2.squarepath")
                    })
                }
            }
        }//:NAVIGATION
    }
}

#Preview {
    VideoListView()
}
