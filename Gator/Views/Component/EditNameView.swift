import SwiftUI

struct EditNameView: View {
    @AppStorage("userName") private var userName: String = ""
    @State private var inputName: String = ""
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack {
            Form {
                Section(header: Text("Ubah Nama")) {
                    TextField("Nama Baru", text: $inputName)
                }

                Section {
                    Button("Simpan") {
                        let trimmed = inputName.trimmingCharacters(in: .whitespaces)
                        if !trimmed.isEmpty {
                            userName = trimmed
                            dismiss()
                        }
                    }
                    .disabled(inputName.trimmingCharacters(in: .whitespaces).isEmpty)
                }
            }
        }
        .navigationTitle("Edit Nama")
        .tint(Color("GreenGator"))
        .onAppear {
            inputName = userName
        }
    }
}
