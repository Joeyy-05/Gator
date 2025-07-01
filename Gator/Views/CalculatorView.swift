import SwiftUI
import SwiftData

struct KalkulatorNilaiView: View {
    @Environment(\.modelContext) private var modelContext
    @Bindable var mataKuliah: MataKuliah
    
    @State private var selectedGrade: String = "Pilih Grade"
    @State private var skorMinimumDiperlukan: [String: String] = [:]
    @State private var summaryText: String = "Silakan pilih target grade untuk memulai kalkulasi."
    
    let gradeThresholds: [String: Double] = ["A": 79.5, "AB": 72, "B": 64.5, "BC": 57, "C": 49.5, "D": 34, "E": 0]
    let gradeOptions = ["Pilih Grade", "A", "AB", "B", "BC", "C", "D", "E"]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                Text(mataKuliah.nama)
                    .font(.largeTitle).fontWeight(.bold)
                
                HStack {
                    Text("Predict Grade").fontWeight(.medium)
                    Spacer()
                    Picker("Grade", selection: $selectedGrade) {
                        ForEach(gradeOptions, id: \.self) { Text($0) }
                    }
                }
                .padding(.bottom, 10)
                
                ForEach(mataKuliah.komponen.sorted(by: { $0.nama < $1.nama })) { komponen in
                    KalkulatorInputRow(
                        namaKomponen: komponen.nama,
                        persentase: komponen.bobot,
                        nilaiAktual: Binding(
                            // BAGIAN GET (UNTUK MENAMPILKAN) - SOLUSI BUG TAMPILAN
                            get: {
                                if let nilai = komponen.nilaiAktual {
                                    // Jika nilai adalah angka bulat (misal: 80.0), tampilkan tanpa desimal ("80")
                                    // Jika ada desimal (misal: 80.5), tampilkan satu angka desimal ("80.5")
                                    if floor(nilai) == nilai {
                                        return String(format: "%.0f", nilai)
                                    } else {
                                        return String(format: "%.1f", nilai)
                                    }
                                }
                                return ""
                            },
                            // BAGIAN SET (UNTUK MENYIMPAN)
                            set: { newValue in
                                let sanitizedValue = newValue.replacingOccurrences(of: ",", with: ".")
                                if sanitizedValue.isEmpty {
                                    komponen.nilaiAktual = nil
                                } else if let doubleValue = Double(sanitizedValue) {
                                    komponen.nilaiAktual = doubleValue
                                }
                                calculateMinimumScores()
                            }
                        ),
                        skorMinimumTampil: skorMinimumDiperlukan[komponen.nama] ?? "-"
                    )
                    Divider()
                }
                
                if !summaryText.isEmpty {
                    Text(summaryText)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                        .padding(.top, 20)
                }
            }
            .padding()
        }
        .navigationTitle("Kalkulasi Nilai")
        .navigationBarTitleDisplayMode(.inline)
        .onChange(of: selectedGrade) { _ in calculateMinimumScores() }
        // SOLUSI ERROR KOMPILASI
        .onAppear {
            calculateMinimumScores()
        }
        .onDisappear {
            try? modelContext.save()
        }
    }
    
    // Fungsi kalkulasi tetap sama seperti versi perbaikan sebelumnya
    private func calculateMinimumScores() {
        guard selectedGrade != "Pilih Grade",
              let targetTotalScore = gradeThresholds[selectedGrade] else {
            resetCalculations()
            return
        }

        var nilaiTertimbangTerkumpul: Double = 0
        var totalBobotTerisi: Double = 0
        
        for komponen in mataKuliah.komponen {
            if let nilai = komponen.nilaiAktual {
                nilaiTertimbangTerkumpul += (nilai * Double(komponen.bobot)) / 100.0
                totalBobotTerisi += Double(komponen.bobot)
            }
        }
        
        let totalBobotSeluruhnya = mataKuliah.komponen.reduce(0.0) { $0 + Double($1.bobot) }
        let totalBobotKosong = totalBobotSeluruhnya - totalBobotTerisi

        if totalBobotKosong == 0 {
            let totalNilaiAkhir = nilaiTertimbangTerkumpul
            var gradeDidapat = "E"
            for (grade, threshold) in gradeThresholds.sorted(by: { $0.value > $1.value }) {
                if totalNilaiAkhir >= threshold { gradeDidapat = grade; break }
            }
            let nilaiFormatted = String(format: "%.2f", totalNilaiAkhir)
            summaryText = "Nilai akhir kamu adalah \(nilaiFormatted) dengan grade \(gradeDidapat)."
            resetSkorMinimumDisplay()
            return
        }
        
        let sisaNilaiDibutuhkan = targetTotalScore - nilaiTertimbangTerkumpul
        var skorMinimum: Double = (sisaNilaiDibutuhkan / totalBobotKosong) * 100.0

        let displayValue: String
        if sisaNilaiDibutuhkan <= 0 { displayValue = "✅" }
        else if skorMinimum > 100 || skorMinimum.isNaN { displayValue = "❗️" }
        else { displayValue = String(format: "%.1f", skorMinimum) }

        var tempSkor = [String: String]()
        for komponen in mataKuliah.komponen {
            if komponen.nilaiAktual == nil {
                tempSkor[komponen.nama] = displayValue
            } else {
                tempSkor[komponen.nama] = "-"
            }
        }
        self.skorMinimumDiperlukan = tempSkor
        summaryText = "Untuk mencapai grade \(selectedGrade), kamu butuh nilai rata-rata \(displayValue) pada komponen sisa."
    }
    
    private func resetCalculations() {
        summaryText = "Silakan pilih target grade untuk memulai kalkulasi."
        resetSkorMinimumDisplay()
    }
    
    private func resetSkorMinimumDisplay() {
        var tempSkor = [String: String]()
        for komponen in mataKuliah.komponen {
            tempSkor[komponen.nama] = "-"
        }
        self.skorMinimumDiperlukan = tempSkor
    }
}
