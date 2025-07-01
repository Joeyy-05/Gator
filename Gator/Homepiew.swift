//
//  Homepiew.swift
//  Gator
//
//  Created by Foundation-009 on 30/06/25.
//

//
//  HomePageAsli.swift
//  Grade Calculator
//
//  Created by Foundation-009 on 25/06/25.
//

import SwiftUI

struct HomePiew: View {
    @State private var selectedSemester = "1"
    @State private var selectedJurusan = "Informatika"
    @State private var isDarkMode = false

    let semesters = ["1", "2", "3", "4", "5", "6", "7", "8"]
    let jurusanOptions = ["Informatika", "Teknologi Informasi", "Teknologi Rekayasa Perangkat Lunak"]

    let primaryGreen = Color(red: 0.1, green: 0.5, blue: 0.2)
    let secondaryGreen = Color(red: 0.6, green: 0.85, blue: 0.6)
    let lightGreen = Color(red: 0.9, green: 0.98, blue: 0.92)
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 16) {
                
                // Header
                HStack(alignment: .center) {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    
                    Text("Gator")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [primaryGreen, secondaryGreen],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                    
                    Spacer()
                    
                    Button(action: {
                        isDarkMode.toggle()
                    }) {
                        Image(systemName: isDarkMode ? "moon.fill" : "sun.max.fill")
                            .font(.system(size: 28))
                            .foregroundColor(isDarkMode ? .black : .orange)
                    }
                }
                .padding(.horizontal)
                .padding(.top, 20)
                
                // Welcome Section
                VStack(alignment: .leading, spacing: 6) {
                    HStack {
                        Image(systemName: "person.fill")
                            .foregroundColor(primaryGreen)
                        Text("Hi, le")
                            .font(.system(size: 22, weight: .semibold))
                            .foregroundColor(.primary)
                    }
                    
                    Text("Selamat datang di IT Del Grade Calculator")
                        .font(.system(size: 16))
                        .foregroundColor(.gray)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(lightGreen)
                )
                .padding(.horizontal)
                
                // Jurusan Picker
                HStack {
                    Label("PROGRAM STUDI", systemImage: "building.columns.fill")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.black.opacity(0.7))
                    
                    Spacer()
                    
                    Picker("Jurusan", selection: $selectedJurusan) {
                        ForEach(jurusanOptions, id: \.self) { jurusan in
                            Text(jurusan).tag(jurusan)
                        }
                    }
                    .pickerStyle(.menu)
                    .tint(primaryGreen)
                }
                .padding(.horizontal)
                
                // Semester Picker
                HStack {
                    Label("SEMESTER", systemImage: "graduationcap.fill")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.black.opacity(0.7))
                    
                    Spacer()
                    
                    Picker("Semester", selection: $selectedSemester) {
                        ForEach(semesters, id: \.self) { semester in
                            Text("Semester \(semester)").tag(semester)
                        }
                    }
                    .pickerStyle(.menu)
                    .tint(primaryGreen)
                }
                .padding(.horizontal)
                
                // Courses Grid
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                    ForEach(sampleCourses, id: \.self) { course in
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
                                .shadow(color: Color.black.opacity(0.08), radius: 6, x: 0, y: 3)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(primaryGreen.opacity(0.25), lineWidth: 1)
                                )
                        )
                    }
                }
                .padding(.horizontal)
                
                Spacer()
                
                // Footer
                Text("Made by Kelompok 1 (Mic)")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity)
                    .padding(.bottom, 20)
            }
            .background(Color(.systemBackground).ignoresSafeArea())
            .navigationBarHidden(true)
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
    
    let sampleCourses = [
        "Dasar Pemrograman",
        "Pengembangan Aplikasi Mobile",
        "Matematika Dasar I",
        "Struktur Data",
        "Aljabar Linear",
        "Basis Data",
        "Sistem Operasi",
        "Jaringan Komputer"
    ]
}

#Preview {
    HomePiew()
}
