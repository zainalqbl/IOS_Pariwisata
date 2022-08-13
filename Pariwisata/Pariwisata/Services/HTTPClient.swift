//
//  HTTPClient.swift
//  Pariwisata
//
//  Created by HIS nutech on 13/08/22.
//

import Foundation

enum NetworkError: Error {
    case badURL
    case noData
    case decodeError
}

class HTTPClient {
    
    func getListWisata(completion: @escaping (Result<[Place], NetworkError>) -> Void) {
        
        guard let url = URL.TourismAPI() else {
            return completion(.failure(.badURL))
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
            
            guard let placeDetail = try? JSONDecoder().decode(Tourism.self, from: data) else {
                return completion(.failure(.decodeError))
            }
            
            completion(.success(placeDetail.places))
            
        }.resume()
        
    }
    
}
