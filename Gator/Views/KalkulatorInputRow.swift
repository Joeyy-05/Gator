    //
//  KalkulatorInputRow.swift
//  Gator
//
//  Created by Foundation-009 on 30/06/25.
//

import SwiftUI

struct KalkulatorInputRow: View {
    let namaKomponen: String
    let persentase: Int
    @Binding var nilaiAktual: String
    let skorMinimumTampil: String

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("\(namaKomponen) (\(persentase)%)")
                    .fontWeight(.semibold)
                Spacer()
                Text("Minimum Score")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            }
            HStack {
                TextField("Nilai", text: $nilaiAktual)
                    .keyboardType(.decimalPad)
                    .padding(10)
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(8)
                Spacer()
                Text(skorMinimumTampil)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(skorMinimumTampil == "❗️" ? .red : (skorMinimumTampil == "✅" ? .green : .primary))
                    .frame(width: 80, alignment: .trailing)
            }
        }
        .padding(.vertical, 10)
    }
}
