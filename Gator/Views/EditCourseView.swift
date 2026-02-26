import SwiftUI
import SwiftData

struct EditCourseView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    
    @Bindable var mataKuliah: MataKuliah
    
    private var totalWeight: Double {
        mataKuliah.komponen.reduce(0) { $0 + $1.bobot }
    }

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Komponen Penilaian")) {
                    ForEach(mataKuliah.komponen) { komponen in
                        HStack(spacing: 15) {
                            TextField("Nama Komponen", text: Binding(
                                get: { komponen.nama },
                                set: { komponen.nama = $0 }
                            ))
                            
                            TextField("Bobot", value: Binding(
                                get: { komponen.bobot },
                                set: { komponen.bobot = $0 }
                            ), format: .number)
                            .keyboardType(.decimalPad)
                            .frame(width: 50, alignment: .trailing)
                            
                            Text("%")
                        }
                    }
                    .onDelete(perform: deleteComponent)
                    
                    Button(action: addComponent) {
                        Label("Tambah Komponen Baru", systemImage: "plus.circle.fill")
                    }
                    .tint(.greenGator)
                    .foregroundStyle(.green)
                }

                Section(footer: Text("Pastikan total bobot komponen adalah 100% untuk perhitungan yang akurat.")) {
                    HStack {
                        Text("Total Bobot")
                            .fontWeight(.bold)
                        Spacer()
                        Text(totalWeight.truncatingRemainder(dividingBy: 1) == 0 ?
                             String(format: "%.0f", totalWeight) :
                             String(format: "%.1f", totalWeight))
                        .fontWeight(.bold)
                        .foregroundColor(totalWeight == 100 ? .green : .red)
                    }
                }
            }
            .navigationTitle("Edit Komponen")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Selesai") {
                        dismiss()
                    }
                    .tint(.green)
                }
            }
        }
    }
    
    private func addComponent() {
        let newComponent = KomponenNilai(nama: "Komponen Baru", bobot: 0, mataKuliah: self.mataKuliah)
        mataKuliah.komponen.append(newComponent)
    }
    
    private func deleteComponent(at offsets: IndexSet) {
        for index in offsets {
            let componentToDelete = mataKuliah.komponen[index]
            mataKuliah.komponen.remove(at: index)
            modelContext.delete(componentToDelete)
        }
    }
}
