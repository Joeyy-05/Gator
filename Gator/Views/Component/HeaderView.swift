import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack(spacing: 8) { 
            Image("Gator2")
                .resizable()
                .scaledToFit()
                .frame(width: 42, height: 42)
            Text("Gator")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.greenGator)
            Spacer()
        }
        .padding(.horizontal)
    }
}
