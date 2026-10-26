//
//  profiel.swift
//  profielviewer
//
//  Created by Victor Moralis on 19/10/2026.
//
import SwiftUI

struct  Profiel: Identifiable {
    let id = UUID()
    let pokemon: Pokemon
    let heeftVerhaal: Bool
    let isOnline: Bool
}
let profielen: [Profiel] = pokemons.map { pokemon in
    Profiel(pokemon: pokemon, heeftVerhaal: Bool.random(), isOnline: Bool.random())
}
