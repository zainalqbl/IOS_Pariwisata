//
//  Tourism.swift
//  Pariwisata
//
//  Created by HIS nutech on 13/08/22.
//

import Foundation

// MARK: - Tourism
struct Tourism: Codable {
    let error: Bool
    let message: String
    let count: Int
    let places: [Place]
}

// MARK: - Place
struct Place: Codable {
    let id: Int
    let name, placeDescription, address: String
    let longitude, latitude: Double
    let like: Int
    let image: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case placeDescription = "description"
        case address, longitude, latitude, like, image
    }
    
    
}
