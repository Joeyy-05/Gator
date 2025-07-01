import SwiftUI

struct ContentView: View {
    // Hanya perlu mengecek nama pengguna
    @AppStorage("userName") private var userName: String = ""
    
    var body: some View {
        // Logika dinamis yang simpel:
        // JIKA nama pengguna kosong, tampilkan OnboardingView.
        // JIKA sudah ada, tampilkan HomeView dan kirim namanya.
        if userName.isEmpty {
            OnboardingView()
        } else {
            HomeView(userName: userName)
        }
    }
}
