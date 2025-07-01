//
//  WelcomeCardView.swift
//  Gator
//
//  Created by Foundation-009 on 30/06/25.
//

import SwiftUI

struct WelcomeCardView: View {
    let nama: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: "person.fill").font(.title).foregroundColor(.green)
            VStack(alignment: .leading) {
                (Text("Hi, ") + Text(nama).fontWeight(.bold))
                Text("Selamat datang di IT Del Grade Calculator")
                    .font(.caption).foregroundStyle(.secondary)
            }
            Spacer()
        }
        .padding().background(Color.appGreenLight).cornerRadius(12)
    }
}
