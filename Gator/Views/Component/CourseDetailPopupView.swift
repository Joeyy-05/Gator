import SwiftUI

struct CourseDetailPopupView: View {
    @Binding var courseForPopup: MataKuliah?
    var onContinue: (MataKuliah) -> Void

    @State private var isEditing = false

    var body: some View {
        if let mataKuliah = courseForPopup {
            VStack(spacing: 0) {
                HStack {
                    Button("Edit") {
                        isEditing.toggle()
                    }
                    .fontWeight(.semibold)
                    .foregroundStyle(.greenGator)

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


                ScrollView {
                    VStack(spacing: 0) {
                        HStack {
                            Text("Komponen")
                            Spacer()
                            Text("Bobot")
                        }
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)
                        .padding(.vertical, 8)

                        ForEach(mataKuliah.komponen) { komponen in
                            VStack(spacing: 0) {
                                Divider()
                                HStack {
                                    Text(komponen.nama)
                                    Spacer()
                                    Text(formatBobot(komponen.bobot))
                                }
                                .padding(.horizontal)
                                .padding(.vertical, 12)
                            }
                        }

                        Spacer(minLength: 16) // biar ada spasi di bawah scroll
                    }
                }

                Divider()

                // Tombol Aksi
                Button {
                    onContinue(mataKuliah)
                } label: {
                    Text("Kalkulasi Grade")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("GreenGator"))
                        .cornerRadius(12)
                }
                .padding()
            }
            .frame(width: 320, height: 400)
            .background(Color("WhiteDark"))
            .cornerRadius(20)
            .shadow(radius: 10)
            .sheet(isPresented: $isEditing) {
                EditCourseView(mataKuliah: mataKuliah)
            }
        }
    }

    private func formatBobot(_ value: Double) -> String {
        if floor(value) == value {
            return "\(Int(value))%"
        } else {
            return String(format: "%.1f%%", value)
        }
    }
}
