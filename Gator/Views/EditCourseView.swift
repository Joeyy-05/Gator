//
//  EditCourseView.swift
//  Gator
//
//  Created by Foundation-009 on 01/07/25.
//


import SwiftUI
import SwiftData

struct EditCourseView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    
    // Menerima mata kuliah yang akan diedit.
    // @Bindable berarti setiap perubahan di sini akan langsung disimpan.
    @Bindable var mataKuliah: MataKuliah
    
    // Properti terkomputasi untuk menghitung total bobot saat ini
    private var totalWeight: Int {
        mataKuliah.komponen.reduce(0) { $0 + $1.bobot }
    }

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Komponen Penilaian")) {
                    // Tampilkan daftar komponen yang ada
                    ForEach(mataKuliah.komponen) { komponen in
                        HStack(spacing: 15) {
                            // TextField untuk nama komponen
                            TextField("Nama Komponen", text: Binding(
                                get: { komponen.nama },
                                set: { komponen.nama = $0 }
                            ))
                            
                            // TextField untuk bobot/persentase
                            TextField("Bobot", value: Binding(
                                get: { komponen.bobot },
                                set: { komponen.bobot = $0 }
                            ), format: .number)
                            .keyboardType(.numberPad)
                            .frame(width: 50, alignment: .trailing)
                            Text("%")
                        }
                    }
                    // Tambahkan fungsi hapus dengan swipe
                    .onDelete(perform: deleteComponent)
                    
                    // Tombol untuk menambah komponen baru
                    Button(action: addComponent) {
                        Label("Tambah Komponen Baru", systemImage: "plus.circle.fill")
                    }
                }
                
                // Section untuk menampilkan total bobot
                Section(footer: Text("Pastikan total bobot komponen adalah 100% untuk perhitungan yang akurat.")) {
                    HStack {
                        Text("Total Bobot")
                            .fontWeight(.bold)
                        Spacer()
                        Text("\(totalWeight)%")
                            .fontWeight(.bold)
                            // Beri warna merah jika total bukan 100
                            .foregroundColor(totalWeight == 100 ? .green : .red)
                    }
                }
            }
            .navigationTitle("Edit Komponen")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                // Tombol untuk menutup halaman edit
                ToolbarItem(placement: .confirmationAction) {
                    Button("Selesai") {
                        dismiss()
                    }
                }
            }
        }
    }
    
    // Fungsi untuk menambah komponen baru
    private func addComponent() {
        let newComponent = KomponenNilai(nama: "Komponen Baru", bobot: 0)
        mataKuliah.komponen.append(newComponent)
    }
    
    // Fungsi untuk menghapus komponen
    private func deleteComponent(at offsets: IndexSet) {
        for index in offsets {
            let componentToDelete = mataKuliah.komponen[index]
            // Hapus dari array dan juga dari context SwiftData
            mataKuliah.komponen.remove(at: index)
            modelContext.delete(componentToDelete)
        }
    }
}