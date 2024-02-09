//
//  CodableBundleExtension.swift
//  Africa Experience
//
//  Created by Leo Merelo on 9/2/24.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [CoverImage] {
        // 1. Locate JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        // 2. Create property for data
        guard let data = try? Data(contentsOf: url) else {
              fatalError("Failed to load \(file) from bundle")
        }
        // 3. Create a decoder
        let decoder = JSONDecoder()
        // 4. Create a property for the decoder data
        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }        // 5. Return ready-to-use data
        return loaded
    }
}
