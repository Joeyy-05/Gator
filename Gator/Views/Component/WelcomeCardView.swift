import SwiftUI

struct WelcomeCardView: View {
    let nama: String

    var body: some View {
        NavigationLink(destination: EditNameView()) {
            HStack(spacing: 16) {
                
                Image(systemName: "person.fill")


                VStack(alignment: .leading) {
                    (Text("Hi, ").foregroundColor(Color("TextColor")) +
                     Text(nama).fontWeight(.bold).foregroundColor(Color("TextColor")))

                    Text("Selamat datang di IT Del Grade Calculator")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }

                Spacer()

                Image(systemName: "chevron.right")
                    .foregroundColor(Color("GreenGator"))
            }
            .padding()
            .background(Color("GreenCard"))
            .cornerRadius(12)
        }
        
        .buttonStyle(.plain)
        
    }
}

