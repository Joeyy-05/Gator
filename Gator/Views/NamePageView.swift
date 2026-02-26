import SwiftUI
import SwiftData

struct OnboardingView: View {
    var body: some View {
        NavigationStack {
            WelcomeStepView()
        }
    }
}

struct WelcomeStepView: View {
    var body: some View {
        VStack(spacing: 30) {
            Spacer()

            VStack {
                Image(systemName: "graduationcap.fill")
                    .font(.system(size: 60))
                    .foregroundStyle(LinearGradient(colors: [.green, .mint], startPoint: .topLeading, endPoint: .bottomTrailing))
                Text("Selamat Datang di Gator")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("TextColor"))
            }

            VStack(alignment: .leading, spacing: 20) {
                FeatureRow(iconName: "apps.iphone.badge.plus", title: "Kurikulum Terintegrasi", subtitle: "Lihat semua mata kuliah yang telah disiapkan untuk setiap jurusan dan semester.")
                FeatureRow(iconName: "slider.horizontal.3", title: "Kelola Komponen Nilai", subtitle: "Sesuaikan bobot tugas, kuis, UTS, dan UAS untuk setiap mata kuliah.")
                FeatureRow(iconName: "chart.bar.xaxis", title: "Mencari Nilai Minimum", subtitle: "Hitung nilai minimum yang Anda butuhkan untuk mencapai target grade impian Anda.")
            }

            Spacer()

            NavigationLink(destination: NameStepView()) {
                Text("Lanjutkan")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("GreenGator"))
                    .cornerRadius(12)
            }
            .tint(.greenGator)
        }
        .padding()
        .background(Color("WhiteDark"))
    }
}

struct NameStepView: View {
    @AppStorage("userName") private var userName: String = ""
    @State private var inputName: String = ""
    @State private var hasAttemptedToContinue = false
    @State private var isActive = false  // <- NEW

    var body: some View {
        ZStack {
            Color("WhiteDark").ignoresSafeArea()

            VStack(spacing: 20) {
                Spacer()

                Image(systemName: "person.crop.circle.badge.questionmark")
                    .font(.system(size: 80))
                    .foregroundColor(.green)

                Text("Siapa Nama Anda?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("TextColor"))

                Text("Nama ini akan digunakan untuk menyapa Anda di halaman utama.")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .foregroundColor(Color("TextColor").opacity(0.7))

                VStack {
                    TextField("Masukkan nama panggilan Anda", text: $inputName)
                        .padding()
                        .cornerRadius(12)
                        .foregroundColor(Color("TextColor"))
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(hasAttemptedToContinue && inputName.isEmpty ? Color.red : Color.gray.opacity(0.3), lineWidth: 1)
                        )

                    if hasAttemptedToContinue && inputName.isEmpty {
                        Text("Nama tidak boleh kosong")
                            .font(.caption)
                            .foregroundColor(.red)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 4)
                    }
                }

                Spacer()

                // ✅ Ganti Button agar bisa full tap area
                Button(action: {
                    hasAttemptedToContinue = true
                    if !inputName.trimmingCharacters(in: .whitespaces).isEmpty {
                        userName = inputName
                        isActive = true
                    }
                }) {
                    Text("Simpan & Lanjutkan")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("GreenGator"))
                        .cornerRadius(12)
                }

                NavigationLink(destination: HomeView(userName: inputName), isActive: $isActive) {
                    EmptyView()
                }
            }
            .padding()
        }
    }
}

struct FeatureRow: View {
    let iconName: String, title: String, subtitle: String
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: iconName)
                .font(.title)
                .foregroundColor(.green)
                .frame(width: 40)
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("TextColor"))
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundColor(Color("TextColor").opacity(0.7))
            }
        }
    }
}
