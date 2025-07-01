import SwiftUI

struct OnboardingView: View {
    @AppStorage("userName") private var userName: String = ""
    @State private var inputName: String = ""
    @State private var hasAttemptedToContinue = false

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.green, .white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Spacer()
                Image(systemName: "graduationcap.fill").font(.system(size: 80)).foregroundColor(.green)
                Text("Selamat Datang di Gator").font(.largeTitle).fontWeight(.bold).multilineTextAlignment(.center)
                Text("Kalkulator nilai untuk membantumu meraih target akademis.").font(.headline).foregroundStyle(.secondary).multilineTextAlignment(.center)
                
                VStack {
                    TextField("Masukkan nama panggilan Anda", text: $inputName)
                        .padding().background(Color(UIColor.systemBackground)).cornerRadius(12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12).stroke(hasAttemptedToContinue && inputName.isEmpty ? Color.red : Color.gray.opacity(0.3), lineWidth: 1)
                        )
                    if hasAttemptedToContinue && inputName.isEmpty {
                        Text("Nama tidak boleh kosong").font(.caption).foregroundColor(.red).frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 4)
                    }
                }
                
                Spacer()
                
                Button(action: saveUserName) {
                    Text("Simpan & Lanjutkan").fontWeight(.semibold).foregroundColor(.white).frame(maxWidth: .infinity).padding().background(Color.blue).cornerRadius(12)
                }
            }
            .padding()
        }
    }
    
    func saveUserName() {
        hasAttemptedToContinue = true
        if !inputName.trimmingCharacters(in: .whitespaces).isEmpty {
            self.userName = inputName
        }
    }
}
