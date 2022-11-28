//
//  PokeModel.swift
//  Pokedex-App
//
//  Created by Kleiton Mendes on 23/11/22.
//

import Foundation

struct PokemonResults: Codable {
    var results: [Pokemon]
}

struct Pokemon: Codable {
    let id = UUID()
    var name: String
    var url: String
}


//struct Welcome {
//    let count: Int
//    let next: String
//    let previous: NSNull
//    let results: [Result]
//}
//
//// MARK: - Result
//struct Result {
//    let name: String
//    let url: String
//}
