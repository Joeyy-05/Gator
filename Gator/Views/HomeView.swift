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
    @State private var isDarkMode = false
    @State private var selectedCourseNameForPopup: String?
    @State private var showPopup = false
    
    private var selectedMajor: Jurusan? {
        allJurusans.first { $0.nama == selectedMajorName }
    }
    
    private var selectedSemester: Semester? {
        selectedMajor?.semesters.first { $0.nomor == selectedSemesterNumber }
    }
    
    private var sampleCourses: [String] {
        selectedSemester?.mataKuliah.map { $0.nama } ?? []
    }
    
    private var semesters: [Int] {
        selectedMajor?.semesters.map { $0.nomor } ?? []
    }
    
    private var jurusanOptions: [String] {
        allJurusans.map { $0.nama }
    }
    let primaryGreen = Color(red: 0.1, green: 0.5, blue: 0.2)
    let secondaryGreen = Color(red: 0.6, green: 0.85, blue: 0.6)
    let lightGreen = Color(red: 0.9, green: 0.98, blue: 0.92)
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            ZStack {
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        HStack {
                            Image("gator")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)

                            Text("Gator")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundStyle(
                                    LinearGradient(colors: [primaryGreen, secondaryGreen],
                                                   startPoint: .leading, endPoint: .trailing)
                                )

                            Spacer()

                            Button {
                                isDarkMode.toggle()
                            } label: {
                                Image(systemName: isDarkMode ? "moon.fill" : "sun.max.fill")
                                    .font(.system(size: 28))
                                    .foregroundColor(isDarkMode ? .black : .orange)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.top, 20)

                        VStack(alignment: .leading, spacing: 6) {
                            HStack {
                                Image(systemName: "person.fill")
                                    .foregroundColor(primaryGreen)
                                Text("Hi, \(userName)")
                                    .font(.system(size: 22, weight: .semibold))
                                    .foregroundColor(.primary)
                            }

                            Text("Selamat datang di IT Del Grade Calculator")
                                .font(.system(size: 16))
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 16).fill(lightGreen))
                        .padding(.horizontal)

                        HStack {
                            Label("PROGRAM STUDI", systemImage: "building.columns.fill")
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(.black.opacity(0.7))

                            Spacer()

                            Picker("Jurusan", selection: Binding(
                                get: { selectedMajorName ?? "" },
                                set: { selectedMajorName = $0 }
                            )) {
                                ForEach(jurusanOptions, id: \.self) {
                                    Text($0)
                                }
                            }
                            .pickerStyle(.menu)
                            .tint(primaryGreen)
                        }
                        .padding(.horizontal)

                        HStack {
                            Label("SEMESTER", systemImage: "graduationcap.fill")
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(.black.opacity(0.7))

                            Spacer()

                            Picker("Semester", selection: Binding(
                                get: { selectedSemesterNumber ?? 1 },
                                set: { selectedSemesterNumber = $0 }
                            )) {
                                ForEach(semesters, id: \.self) {
                                    Text("Semester \($0)").tag($0)
                                }
                            }
                            .pickerStyle(.menu)
                            .tint(primaryGreen)
                        }
                        .padding(.horizontal)

                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                            ForEach(sampleCourses, id: \.self) { course in
                                Button {
                                    selectedCourseNameForPopup = course
                                    showPopup = true
                                } label: {
                                    VStack(spacing: 8) {
                                        Image(systemName: "book.closed.fill")
                                            .font(.system(size: 24))
                                            .foregroundColor(primaryGreen)

                                        Text(course)
                                            .font(.system(size: 16, weight: .medium))
                                            .foregroundColor(.primary)
                                            .multilineTextAlignment(.center)
                                            .frame(maxWidth: .infinity)
                                    }
                                    .padding()
                                    .frame(minHeight: 100)
                                    .background(
                                        RoundedRectangle(cornerRadius: 16)
                                            .fill(Color(.systemBackground))
                                            .shadow(color: .black.opacity(0.08), radius: 6, x: 0, y: 3)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 16)
                                                    .stroke(primaryGreen.opacity(0.25), lineWidth: 1)
                                            )
                                    )
                                }
                            }
                        }
                        .padding(.horizontal)

                        Spacer()

                        Text("Made by Kelompok 1 (Mic)")
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity)
                            .padding(.bottom, 20)
                    }
                }
                .background(Color(.systemBackground).ignoresSafeArea())
                .navigationBarHidden(true)
                .preferredColorScheme(isDarkMode ? .dark : .light)

                if showPopup {
                    Color.black.opacity(0.4)
                        .ignoresSafeArea()
                        .onTapGesture {
                            showPopup = false
                        }

                    if let name = selectedCourseNameForPopup,
                       let matched = selectedSemester?.mataKuliah.first(where: { $0.nama == name }) {
                        CourseDetailPopupView(courseForPopup: .constant(matched)) { selectedCourse in
                            courseForPopup = nil
                            navigationPath.append(selectedCourse)
                            showPopup = false
                        }
                        .transition(.scale.combined(with: .opacity))
                    }
                }
            }
            .onAppear(perform: setupDefaults)
        }
        .animation(.easeInOut, value: showPopup)
        .onChange(of: selectedMajorName) {
            selectedSemesterNumber = selectedMajor?.semesters.first?.nomor
        }
    }

    private func setupDefaults() {
        DummyDataProvider.generate(context: modelContext)
        if selectedMajorName == nil, let firstMajor = allJurusans.first {
            selectedMajorName = firstMajor.nama
        }
        if selectedSemesterNumber == nil, let firstSemester = selectedMajor?.semesters.first {
            selectedSemesterNumber = firstSemester.nomor
        }
    }
}
#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(
            for: Jurusan.self, Semester.self, MataKuliah.self, KomponenNilai.self,
            configurations: config
        )
        
        return HomeView(userName: "Yibo")
            .modelContainer(container)
    } catch {
        return Text("Preview Error: \(error.localizedDescription)")
    }
}

