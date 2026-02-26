import SwiftUI

struct KalkulatorInputRow: View {
    let namaKomponen: String
    let persentase: Double
    @Binding var nilaiAktual: String
    let skorMinimumTampil: String

    var formattedPersentase: String {
        if persentase.truncatingRemainder(dividingBy: 1) == 0 {
            return String(format: "%.0f", persentase)
        } else {
            return String(format: "%.1f", persentase)
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("\(namaKomponen) (\(formattedPersentase)%)")
                    .fontWeight(.semibold)
                Spacer()
                Text("Minimum Score")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            }

            HStack {
                TextField("Nilai", text: limitedBinding)
                    .keyboardType(.decimalPad)
                    .padding(10)
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(8)
                Spacer()
                
                // Tampilkan icon atau angka berdasarkan nilai skorMinimumTampil
                if skorMinimumTampil == "checkmark.circle.fill" {
                    Image(systemName: "checkmark.circle.fill")
                        .font(.title2)
                        .foregroundColor(.green)
                        .frame(width: 80, alignment: .trailing)
                } else if skorMinimumTampil == "xmark.circle.fill" {
                    Image(systemName: "xmark.circle.fill")
                        .font(.title2)
                        .foregroundColor(.red)
                        .frame(width: 80, alignment: .trailing)
                } else {
                    Text(skorMinimumTampil)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .frame(width: 80, alignment: .trailing)
                }
            }
        }
        .padding(.vertical, 10)
    }


    private var limitedBinding: Binding<String> {
        Binding<String>(
            get: {
                nilaiAktual
            },
            set: { newValue in
                let sanitized = newValue.replacingOccurrences(of: ",", with: ".")
                if sanitized.isEmpty {
                    nilaiAktual = ""
                } else if let value = Double(sanitized), value <= 100 {

                    let truncated = floor(value * 100) / 100
                    let formatted = String(format: "%.2f", truncated)
                    nilaiAktual = formatted
                }
            }
        )
    }
}
