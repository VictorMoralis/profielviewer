//
//  ContentView.swift
//  profielviewer
//
//  Created by Victor Moralis on 19/10/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView("Profielen", subtitle: "Scrollview,Hstack,ForEach,Identifiable,Tertiare Operator", desc: "Een horizontale rij profielen, elke rand en elk bolletje krijgt via een tertiare operator", back: .teal)
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(spacing: 20) {
                    ForEach(profielen) {
                        profiel in ProfielView(profiel: profiel)
                        
                    }
                    
                }
                .padding()

            }
        }
        Spacer()
    }
}

#Preview {
    ContentView()
}
