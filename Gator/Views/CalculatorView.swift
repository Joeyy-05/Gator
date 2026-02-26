import SwiftUI
import SwiftData

struct KalkulatorNilaiView: View {
    @Environment(\.modelContext) private var modelContext
    @Bindable var mataKuliah: MataKuliah

    @State private var selectedGrade: String = "Pilih Grade"
    @State private var skorMinimumDiperlukan: [PersistentIdentifier: String] = [:]
    @State private var finalGradeResult: String? = nil
    @State private var isInfoSheetPresented = false

    static let gradeThresholds: [String: Double] = ["A": 79.5, "AB": 72, "B": 64.5, "BC": 57, "C": 49.5, "D": 34, "E": 0]
    static let gradeOptions = ["Pilih Grade", "A", "AB", "B", "BC", "C", "D", "E"]

    private var sortedKomponen: [KomponenNilai] {
        mataKuliah.komponen.sorted { $0.nama < $1.nama }
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                Text(mataKuliah.nama)
                    .font(.largeTitle).fontWeight(.bold)

                HStack {
                    Text("Predict Grade").fontWeight(.medium)
                    Spacer()
                    Picker("Grade", selection: $selectedGrade) {
                        ForEach(Self.gradeOptions, id: \.self) { Text($0) }
                    }
                    .pickerStyle(.menu)
                }
                .padding(.bottom, 10)

                ForEach(sortedKomponen, id: \.id) { komponen in
                    KalkulatorInputRow(
                        namaKomponen: komponen.nama,
                        persentase: komponen.bobot,
                        nilaiAktual: bindingFor(komponen),
                        skorMinimumTampil: skorMinimumDiperlukan[komponen.id] ?? "-"
                    )
                    Divider()
                }
                
                summaryResultView
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
                    .padding(.top, 20)
            }
            .padding()
        }
        .navigationTitle("Kalkulasi Nilai")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { isInfoSheetPresented = true }) {
                    Image(systemName: "info.circle")
                }
            }
        }
        .sheet(isPresented: $isInfoSheetPresented) { InfoPopupView() }
        .onChange(of: selectedGrade) { _ in calculateMinimumScores() }
        .onAppear { calculateMinimumScores() }
        .onDisappear { try? modelContext.save() }
    }

    private func bindingFor(_ komponen: KomponenNilai) -> Binding<String> {
        Binding<String>(
            get: {
                if let nilai = komponen.nilaiAktual {
                    return floor(nilai) == nilai ? String(format: "%.0f", nilai) : String(format: "%.1f", nilai)
                }
                return ""
            },
            set: { newValue in
                let sanitized = newValue.replacingOccurrences(of: ",", with: ".")
                if sanitized.isEmpty { komponen.nilaiAktual = nil }
                else if let doubleValue = Double(sanitized) { komponen.nilaiAktual = doubleValue }
                calculateMinimumScores()
            }
        )
    }

    private func calculateMinimumScores() {
        finalGradeResult = nil
        
        guard selectedGrade != "Pilih Grade", let targetTotalScore = Self.gradeThresholds[selectedGrade] else {
            resetCalculations(); return
        }

        var nilaiTertimbang: Double = 0
        var totalBobotTerisi: Double = 0
        for komponen in sortedKomponen {
            if let nilai = komponen.nilaiAktual {
                nilaiTertimbang += (nilai * komponen.bobot) / 100.0
                totalBobotTerisi += komponen.bobot
            }
        }

        let totalBobot = sortedKomponen.reduce(0.0) { $0 + $1.bobot }
        let bobotKosong = totalBobot - totalBobotTerisi

        if bobotKosong == 0 {
            let nilaiAkhir = nilaiTertimbang
            var grade = "E"
            for (g, threshold) in Self.gradeThresholds.sorted(by: { $0.value > $1.value }) {
                if nilaiAkhir >= threshold { grade = g; break }
            }
            finalGradeResult = "Nilai akhir kamu adalah \(String(format: "%.2f", nilaiAkhir)) dengan grade \(grade)."
            resetSkorMinimumDisplay()
            return
        }

        let sisaNilai = targetTotalScore - nilaiTertimbang
        let skorMinimum = (sisaNilai / bobotKosong) * 100.0

        // --- PERBAIKAN 1: Kembalikan ke nama ikon SF Symbols ---
        let displayValue: String
        if sisaNilai <= 0 {
            displayValue = "checkmark.circle.fill"
        } else if skorMinimum > 100 || skorMinimum.isNaN {
            displayValue = "xmark.circle.fill"
        } else {
            displayValue = String(format: "%.1f", skorMinimum)
        }

        var temp = [KomponenNilai.ID: String]()
        for komponen in sortedKomponen {
            temp[komponen.id] = komponen.nilaiAktual == nil ? displayValue : "-"
        }
        skorMinimumDiperlukan = temp
    }

    private func resetCalculations() {
        finalGradeResult = nil
        resetSkorMinimumDisplay()
    }

    private func resetSkorMinimumDisplay() {
        var temp = [KomponenNilai.ID: String]()
        for komponen in sortedKomponen {
            temp[komponen.id] = "-"
        }
        skorMinimumDiperlukan = temp
    }
    
    @ViewBuilder
    private var summaryResultView: some View {
        if let finalText = finalGradeResult {
            Text(finalText)
                .font(.headline)
                .fontWeight(.bold)
        } else {
            let displayValue = skorMinimumDiperlukan.first(where: { $0.value != "-" })?.value ?? ""
            
            if selectedGrade == "Pilih Grade" || displayValue.isEmpty || displayValue == "-" {
                Text("Silakan pilih target grade untuk memulai kalkulasi.")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
            
            // --- PERBAIKAN 2: Sesuaikan pengecekan dengan nama ikon ---
            } else if displayValue == "xmark.circle.fill" {
                (Text("Tidak memungkinkan untuk meraih grade ")
                    .fontWeight(.bold)
                 + Text(selectedGrade)
                    .fontWeight(.bold)
                    .foregroundColor(.red))
                    .font(.headline)
            } else if displayValue == "checkmark.circle.fill" {
                (Text("Selamat! Target grade ")
                    .fontWeight(.bold)
                 + Text(selectedGrade)
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                 + Text(" sudah pasti tercapai.")
                    .fontWeight(.bold))
                    .font(.headline)
            } else {
                (Text("Untuk mencapai grade ")
                    .fontWeight(.bold)
                 + Text(selectedGrade)
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                 + Text(", Anda butuh nilai rata-rata ")
                    .fontWeight(.bold)
                 + Text(displayValue)
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                 + Text(" pada komponen sisa."))
                    .font(.headline)
            }
        }
    }
}
private struct InfoPopupView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Cara Penggunaan")) {
                    VStack(alignment: .leading, spacing: 12) {
                        Label("Pilih *Target Grade* yang Anda inginkan di menu drop-down.", systemImage: "1.circle.fill")
                        Label("Isi kolom *Nilai Aktual* untuk komponen yang nilainya sudah keluar.", systemImage: "2.circle.fill")
                        Label("Kolom *Skor Minimum* akan otomatis menunjukkan nilai rata-rata yang Anda butuhkan.", systemImage: "3.circle.fill")
                    }
                    .padding(.vertical, 8)
                }

                Section(header: Text("Keterangan Skor")) {
                    Label("Menunjukkan skor rata-rata yang Anda butuhkan.", systemImage: "numbers")
                    Label("Selamat! Target nilai sudah tercapai.", systemImage: "checkmark.circle.fill")
                        .foregroundStyle(.green)
                    Label("Target tidak mungkin tercapai (skor > 100).", systemImage: "xmark.circle.fill")
                        .foregroundStyle(.red)
                }
            }
            .navigationTitle("Petunjuk Penggunaan")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Button("Tutup") {
                        dismiss()
                    }
                }
            }
        }
    }
}
