//
//  NetworkManager.swift
//  SpinTheWheel
//
//  Created by HapiDani on 8/2/21.
//  Copyright © 2021 ahavamorse. All rights reserved.
//

import Foundation

enum NetworkManager {
    
    static let urlString = "http://mockbin.org/bin/dc24c4de-102f-49bf-9c80-9ed52d4ea7f6"
    
    func getRewards(completed: @escaping (Result<[Reward], Error>) -> Void) {
        guard let url = URL(string: NetworkManager.urlString) else {
            completed(.failure(.invalidUrl))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(.failure(.invalidRequest))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let rewards = try decoder.decode([Reward].self, from: data)
                completed(.success(rewards))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
}
