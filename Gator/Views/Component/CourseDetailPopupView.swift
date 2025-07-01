import SwiftUI

struct CourseDetailPopupView: View {
    @Binding var courseForPopup: MataKuliah?
    var onContinue: (MataKuliah) -> Void
    
    // State untuk mengontrol munculnya sheet editor
    @State private var isEditing = false
    
    var body: some View {
        if let mataKuliah = courseForPopup {
            VStack(spacing: 0) {
                // Header: Judul dan Tombol Close
                HStack {
                    // Tombol Edit Baru
                    Button("Edit") {
                        isEditing.toggle()
                    }
                    .fontWeight(.semibold)

                    Spacer()
                    
                    Text(mataKuliah.nama)
                        .font(.headline)
                        .fontWeight(.bold)
                    
                    Spacer()

                    Button {
                        courseForPopup = nil
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title2)
                            .foregroundColor(.gray.opacity(0.5))
                    }
                }
                .padding()
                
                Divider()

                // Tabel Komponen (tidak berubah)
                VStack(spacing: 0) {
                    HStack {
                        Text("Komponen")
                        Spacer()
                        Text("Weight")
                    }
                    .font(.caption).fontWeight(.bold).foregroundColor(.secondary)
                    .padding(.horizontal).padding(.vertical, 8)
                    
                    ForEach(mataKuliah.komponen) { komponen in
                        VStack(spacing: 0) {
                            Divider()
                            HStack {
                                Text(komponen.nama)
                                Spacer()
                                Text("\(komponen.bobot)%")
                            }
                            .padding(.horizontal).padding(.vertical, 12)
                        }
                    }
                }
                
                Spacer()
                
                // Tombol Aksi (tidak berubah)
                Button {
                    onContinue(mataKuliah)
                } label: {
                    Text("Calculate Grade")
                        .fontWeight(.semibold).foregroundColor(.white).frame(maxWidth: .infinity)
                        .padding().background(Color.blue).cornerRadius(12)
                }
                .padding()
            }
            .frame(width: 320, height: 400)
            .background(.white)
            .cornerRadius(20)
            .shadow(radius: 10)
            // Tambahkan .sheet modifier di sini
            .sheet(isPresented: $isEditing) {
                // Tampilkan EditCourseView saat isEditing true
                EditCourseView(mataKuliah: mataKuliah)
            }
        }
    }
}
