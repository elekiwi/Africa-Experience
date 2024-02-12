//
//  VideosModel.swift
//  Africa Experience
//
//  Created by Leo Merelo on 12/2/24.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline : String
    
    
    //Computed property
    var thumbnail: String {
        "video-\(id)"
    }
    
    
    static let videos: [Video] = Bundle.main.decode("videos.json")

}
