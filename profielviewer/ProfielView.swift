//
//  profielview.swift
//  profielviewer
//
//  Created by Victor Moralis on 19/10/2026.
//

import SwiftUI

struct ProfielView : View {
    let profiel : Profiel
    
    var body: some View {
        VStack{
         
                
                
                Circle()
                    .fill(Color.gray.opacity(0.2))
                    .frame(width: 70)
                    .overlay(
                        Image(profiel.pokemon.afbeelding)
                            .resizable()
                    )
                    .overlay(
                        Circle()
                            .stroke(profiel.heeftVerhaal ? Color.blue : Color.red, lineWidth: 3)
                    )
                
                HStack(spacing: 4){
                    Circle()
                        .fill(profiel.isOnline ? Color.green : Color.red)
                        .frame(width: 8)
                    Text(profiel.pokemon.naam)
                        .font(.caption)
                }
            }
        }
    }
    
    #Preview {
        let p = Pokemon(naam: "Bulbasaur", nummer: 1, type1: "Grass", type2: "Poison", kleur: .green, HP: 45, speed: 45)
        let pr = Profiel(pokemon: p, heeftVerhaal: false, isOnline: false)
        ProfielView(profiel: pr)
    }

