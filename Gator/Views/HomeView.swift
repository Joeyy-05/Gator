import SwiftUI
import SwiftData

struct HomeView: View {
    @Environment(\.modelContext) private var modelContext
    let userName: String
    
    @Query(sort: \Jurusan.nama) private var allJurusans: [Jurusan]
    @AppStorage("selectedMajorName_v2") private var selectedMajorName: String?
    @AppStorage("selectedSemesterNumber_v2") private var selectedSemesterNumber: Int?
    
    @State private var courseForPopup: MataKuliah?
    @State private var navigationPath = NavigationPath()
    
    private var selectedMajor: Jurusan? {
        allJurusans.first { $0.nama == selectedMajorName }
    }
    
    private var selectedSemester: Semester? {
        selectedMajor?.semesters.first { $0.nomor == selectedSemesterNumber }
    }
    
    private var coursesToDisplay: [MataKuliah] {
        selectedSemester?.mataKuliah.sorted(by: { $0.nama < $1.nama }) ?? []
    }
    
    let gridLayout: [GridItem] = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        ZStack {
            NavigationStack(path: $navigationPath) {
                ScrollView {
                    VStack(spacing: 24) {
                        HeaderView()
                        WelcomeCardView(nama: userName)
                        
                        // Picker Section
                        VStack(spacing: 0) {
                            HStack(spacing: 16) {
                                Image(systemName: "building.columns.fill").font(.headline).foregroundColor(.gray)
                                Text("PROGRAM STUDI").font(.caption).fontWeight(.semibold).foregroundColor(.gray)
                                Spacer()
                                Menu {
                                    ForEach(allJurusans) { jurusan in
                                        Button(jurusan.nama) { selectedMajorName = jurusan.nama }
                                    }
                                } label: {
                                    HStack {
                                        Text(selectedMajorName ?? "Pilih Jurusan")
                                        Image(systemName: "chevron.down")
                                    }
                                    .font(.subheadline).fontWeight(.semibold).foregroundColor(.primary)
                                }
                            }
                            .padding()

                            Divider().padding(.leading, 40)

                            HStack(spacing: 16) {
                                Image(systemName: "graduationcap.fill").font(.headline).foregroundColor(.gray)
                                Text("SEMESTER").font(.caption).fontWeight(.semibold).foregroundColor(.gray)
                                Spacer()
                                Menu {
                                    if let selectedMajor = selectedMajor {
                                        ForEach(selectedMajor.semesters.sorted(by: { $0.nomor < $1.nomor })) { semester in
                                            Button("Semester \(semester.nomor)") {
                                                selectedSemesterNumber = semester.nomor
                                            }
                                        }
                                    } else {
                                        Text("Pilih jurusan terlebih dahulu")
                                    }
                                } label: {
                                    HStack {
                                        Text("Semester \(selectedSemesterNumber ?? 1)")
                                        Image(systemName: "chevron.down")
                                    }
                                    .font(.subheadline).fontWeight(.semibold).foregroundColor(.primary)
                                }
                            }
                            .padding()
                        }
                        .background(Color(.secondarySystemGroupedBackground)) // Warna netral yang adaptif
                        .cornerRadius(12)
                        
                        // Courses Grid Section
                        if !coursesToDisplay.isEmpty {
                            LazyVGrid(columns: gridLayout, spacing: 16) {
                                ForEach(coursesToDisplay) { matkul in
                                    Button(action: { courseForPopup = matkul }) {
                                        CourseButtonView(mataKuliah: matkul)
                                    }
                                }
                            }
                        } else {
                            ContentUnavailableView("Pilih Jurusan & Semester", systemImage: "hand.point.up.left", description: Text("Silakan pilih jurusan dan semester di atas untuk melihat mata kuliah."))
                                .padding(.top, 50)
                        }
                        
                        FooterView()
                    }
                    .padding()
                }
                .background(Color(UIColor.systemGroupedBackground))
                .navigationBarHidden(true)
                .navigationDestination(for: MataKuliah.self) { matkul in KalkulatorNilaiView(mataKuliah: matkul) }
                .onAppear(perform: setupDefaults)
            }
            .disabled(courseForPopup != nil)

            // --- BAGIAN POP-UP ---
            if courseForPopup != nil {
                Color.black.opacity(0.4).ignoresSafeArea().onTapGesture { courseForPopup = nil }
                
                CourseDetailPopupView(courseForPopup: $courseForPopup) { courseToNavigate in
                    // === PERBAIKAN LOGIKA NAVIGASI DI SINI ===
                    // 1. Simpan dulu tujuan navigasi
                    let targetCourse = courseToNavigate
                    // 2. Tutup pop-up
                    courseForPopup = nil
                    // 3. Reset total path navigasi untuk memulai dari awal
                    navigationPath = NavigationPath()
                    // 4. Tambahkan tujuan baru ke path yang sudah bersih
                    navigationPath.append(targetCourse)
                }
                .transition(.scale.combined(with: .opacity))
            }
        }
        .animation(.easeInOut, value: courseForPopup)
        .onChange(of: selectedMajorName) {
            // Saat jurusan diganti, otomatis pilih semester pertama yang tersedia
            selectedSemesterNumber = selectedMajor?.semesters.sorted(by: { $0.nomor < $1.nomor }).first?.nomor
        }
    }
    
    private func setupDefaults() {
        DataProvider.generate(context: modelContext)
        if selectedMajorName == nil, let firstMajor = allJurusans.first {
            selectedMajorName = firstMajor.nama
        }
        if selectedSemesterNumber == nil,
           let firstSemester = selectedMajor?.semesters.sorted(by: { $0.nomor < $1.nomor }).first {
            selectedSemesterNumber = firstSemester.nomor
        }
    }
}
