//
//  HeaderView.swift
//  Gator
//
//  Created by Foundation-009 on 30/06/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Spacer()
            Text("Gator").font(.title2).fontWeight(.bold)
            Spacer()
            Button(action: {}) {
                Image(systemName: "sun.max.fill").font(.title2).foregroundColor(.orange)
            }
        }
    }
}
