//
//  Network.swift
//  Pokedex-App
//
//  Created by Kleiton Mendes on 23/11/22.
//https://pokeapi.co/api/v2/pokemon/?offset=0&limit=151

import Foundation

class NetWork {
    
    static let shared = NetWork()
    
    private func fetchPopular(_ completion: @escaping ([Pokemon]) -> ()) {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=20") else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            do {
                let result = try JSONDecoder().decode(PokemonResults.self, from: data)
                completion(result.results)
            } catch {
                print("Não foi possível decodificar o JSON")
            }
        }
        task.resume()
    }
}
