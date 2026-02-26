//
//  D3TK.swift
//  Gator
//
//  Created by Foundation-025 on 07/07/25.
//


import Foundation
import SwiftData

// DIII - Teknologi Komputer
enum D3TK_Data {
    static func create() -> Jurusan {
        let jurusan = Jurusan(nama: "DIII - Teknologi Komputer")
        let semester1 = Semester(nomor: 1, jurusan: jurusan)
        let matkul1A = MataKuliah(nama: "English I", sks: 2, semester: semester1)
        matkul1A.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul1A),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul1A),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul1A),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1A),
                             KomponenNilai(nama: "Partisipasi", bobot: 35, mataKuliah: matkul1A)]
        let matkul1B = MataKuliah(nama: "Del Character", sks: 2, semester: semester1)
        matkul1B.komponen = [KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: matkul1B),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul1B),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1B),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1B)]
        let matkul1C = MataKuliah(nama: "Discrete Mathematics", sks: 3, semester: semester1)
        matkul1C.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul1C),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: matkul1C),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul1C),
                             KomponenNilai(nama: "UAS", bobot: 15, mataKuliah: matkul1C),
                             KomponenNilai(nama: "Proyek", bobot: 20, mataKuliah: matkul1C)]
        let matkul1D = MataKuliah(nama: "Programming Fundamental", sks: 3, semester: semester1)
        matkul1D.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul1D),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul1D),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul1D),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul1D),
                             KomponenNilai(nama: "Proyek", bobot: 20, mataKuliah: matkul1D)]
        let matkul1E = MataKuliah(nama: "Architecture and Computer Organization", sks: 3, semester: semester1)
        matkul1E.komponen = [KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul1E),
                             KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul1E),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul1E),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1E),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul1E)]
        let matkul1F = MataKuliah(nama: "Web Development", sks: 3, semester: semester1)
        matkul1F.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul1F),
                             KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul1F),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul1F),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1F),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1F)]
        let matkul1G = MataKuliah(nama: "Software Engineering", sks: 3, semester: semester1)
        matkul1G.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul1G),
                             KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul1G),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul1G),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul1G),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul1G)]
        let matkul1H = MataKuliah(nama: "Problem Solving in Digital World", sks: 2, semester: semester1)
        matkul1H.komponen = [KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul1H),
                             KomponenNilai(nama: "Proyek", bobot: 80, mataKuliah: matkul1H)]
        
        semester1.mataKuliah = [matkul1A, matkul1B, matkul1C, matkul1D, matkul1E, matkul1F, matkul1G, matkul1H]
        
        let semester2 = Semester(nomor: 2, jurusan: jurusan)
        let matkul2A = MataKuliah(nama: "Religion", sks: 2, semester: semester2)
        matkul2A.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul2A),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul2A),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul2A),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul2A)]
        let matkul2B = MataKuliah(nama: "Linear Algebra", sks: 2, semester: semester2)
        matkul2B.komponen = [KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul2B),
                             KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul2B),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: matkul2B),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul2B),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul2B)]
        let matkul2C = MataKuliah(nama: "Algorithm and Data Structures", sks: 3, semester: semester2)
        matkul2C.komponen = [KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul2C),
                             KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul2C),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul2C),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul2C),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul2C)]
        let matkul2D = MataKuliah(nama: "Operating System", sks: 3, semester: semester2)
        matkul2D.komponen = [KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul2D),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul2D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul2D),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul2D)]
        let matkul2E = MataKuliah(nama: "First Year Project", sks: 3, semester: semester2)
        matkul2E.komponen = [KomponenNilai(nama: "Seminar", bobot: 45, mataKuliah: matkul2E),
                             KomponenNilai(nama: "Bimbingan", bobot: 40, mataKuliah: matkul2E),
                             KomponenNilai(nama: "Administrasi", bobot: 10, mataKuliah: matkul2E),
                             KomponenNilai(nama: "Pameran", bobot: 5, mataKuliah: matkul2E)]
        let matkul2F = MataKuliah(nama: "Database", sks: 3, semester: semester2)
        matkul2F.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul2F),
                             KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul2F),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul2F),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul2F),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul2F)]
        let matkul2G = MataKuliah(nama: "Interface Design", sks: 3, semester: semester2)
        matkul2G.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul2G),
                             KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul2G),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul2G),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul2G),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul2G)]
        let matkul2H = MataKuliah(nama: "Electronics Fundamental", sks: 2, semester: semester2)
        matkul2H.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul2H),
                             KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul2H),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul2H),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul2H),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul2H)]
        let matkul2I = MataKuliah(nama: "First Year Project II", sks: 3, semester: semester2)
        matkul2I.komponen = [KomponenNilai(nama: "Seminar", bobot: 45, mataKuliah: matkul2I),
                             KomponenNilai(nama: "Bimbingan", bobot: 40, mataKuliah: matkul2I),
                             KomponenNilai(nama: "Administrasi", bobot: 10, mataKuliah: matkul2I),
                             KomponenNilai(nama: "Pameran", bobot: 5, mataKuliah: matkul2I)]
        
        semester2.mataKuliah = [matkul2A, matkul2B, matkul2C, matkul2D, matkul2E, matkul2F, matkul2G, matkul2H]
        
        let semester3 = Semester(nomor: 3, jurusan: jurusan)
        let matkul3A = MataKuliah(nama: "Indonesian", sks: 2, semester: semester3)
        matkul3A.komponen = [KomponenNilai(nama: "Prakatikum", bobot: 15, mataKuliah: matkul3A),
                             KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul3A),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul3A),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul3A),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul3A)]
        let matkul3B = MataKuliah(nama: "Technopreneurship", sks: 2, semester: semester3)
        matkul3B.komponen = [KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: matkul3B),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3B),
                             KomponenNilai(nama: "UAS", bobot: 40, mataKuliah: matkul3B)]
        let matkul3C = MataKuliah(nama: "Probability and Statistics", sks: 3, semester: semester3)
        matkul3C.komponen = [KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul3C),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul3C),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3C),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul3C)]
        let matkul3D = MataKuliah(nama: "Computer Network", sks: 3, semester: semester3)
        matkul3D.komponen = [KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul3D),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul3D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3D),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul3D)]
        let matkul3E = MataKuliah(nama: "Computer Virtualization", sks: 3, semester: semester3)
        matkul3E.komponen = [KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul3E),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul3E),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3E),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul3E)]
        let matkul3F = MataKuliah(nama: "Embedded System", sks: 3, semester: semester3)
        matkul3F.komponen = [KomponenNilai(nama: "Praktikum", bobot: 25, mataKuliah: matkul3F),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul3F),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3F),
                             KomponenNilai(nama: "UAS", bobot: 10, mataKuliah: matkul3F),
                             KomponenNilai(nama: "Proyek Akhir", bobot: 25, mataKuliah: matkul3F),]
        let matkul3G = MataKuliah(nama: "English II", sks: 3, semester: semester3)
        matkul3G.komponen = [KomponenNilai(nama: "Nilai Partisipasi", bobot: 5, mataKuliah: matkul3G),
                             KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul3G),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul3G),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul3G),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul3G)]
        
        semester3.mataKuliah = [matkul3A, matkul3B, matkul3C, matkul3D, matkul3E, matkul3F, matkul3G]
        
        
        let semester4 = Semester(nomor: 4, jurusan: jurusan)
        let matkul4A = MataKuliah(nama: "Pancasila", sks: 2, semester: semester4)
        matkul4A.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul4A),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul4A),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4A),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4A)]
        let matkul4B = MataKuliah(nama: "Internetworking", sks: 3, semester: semester4)
        matkul4B.komponen = [KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul4B),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul4B),
                             KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul4B),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul4B)]
        let matkul4C = MataKuliah(nama: "Distributed System", sks: 3, semester: semester4)
        matkul4C.komponen = [KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul4C),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul4C),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4C),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul4C)]
        let matkul4D = MataKuliah(nama: "System Programming", sks: 3, semester: semester4)
        matkul4D.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul4D),
                             KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul4D),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul4D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4D),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4D)]
        let matkul4E = MataKuliah(nama: "Network System Software", sks: 3, semester: semester4)
        matkul4E.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul4E),
                             KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul4E),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul4E),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4E),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4E)]
        let matkul4F = MataKuliah(nama: "Data Communication", sks: 2, semester: semester4)
        matkul4F.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul4F),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul4F),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul4F),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul4F),
                             KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul4F)]
        let matkul4G = MataKuliah(nama: "Second Year Project", sks: 3, semester: semester4)
        matkul4G.komponen = [KomponenNilai(nama: "Administrasi", bobot: 10, mataKuliah: matkul4G),
                             KomponenNilai(nama: "Pameran", bobot: 5, mataKuliah: matkul4G),
                             KomponenNilai(nama: "Bimbingan", bobot: 40, mataKuliah: matkul4G),
                             KomponenNilai(nama: "Seminar", bobot: 45, mataKuliah: matkul4G)]
        
        semester4.mataKuliah = [matkul4A, matkul4B, matkul4C, matkul4D, matkul4E, matkul4F, matkul4G]
        
        
        let semester5 = Semester(nomor: 5, jurusan: jurusan)
        let matkul5A = MataKuliah(nama: "Network Security", sks: 3, semester: semester5)
        matkul5A.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul5A),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul5A),
                             KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul5A),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul5A),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul5A)]
        let matkul5B = MataKuliah(nama: "English III", sks: 2, semester: semester5)
        matkul5B.komponen = [KomponenNilai(nama: "Partisipasi", bobot: 5, mataKuliah: matkul5B),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul5B),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul5B),
                             KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul5B),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul5B)]
        let matkul5C = MataKuliah(nama: "Cloud Computing", sks: 3, semester: semester5)
        matkul5C.komponen = [KomponenNilai(nama: "Proyek", bobot: 10, mataKuliah: matkul5C),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul5C),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul5C),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul5C),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul5C)]
        let matkul5D = MataKuliah(nama: "IoT Technology", sks: 3, semester: semester5)
        matkul5D.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul5D),
                             KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul5D),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul5D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul5D),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul5D)]
        let matkul5E = MataKuliah(nama: "Ethics and Professional Development", sks: 2, semester: semester5)
        matkul5E.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul5E),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul5E),
                             KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul5E),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul5E)]
        let matkul5F = MataKuliah(nama: "Kewarganegaraan", sks: 2, semester: semester5)
        matkul5F.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul5F),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul5F),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul5F),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul5F)]
        let matkul5G = MataKuliah(nama: "Final Project I", sks: 4, semester: semester5)
        matkul5G.komponen = [KomponenNilai(nama: "UAS", bobot: 60, mataKuliah: matkul5G),
                             KomponenNilai(nama: "Nilai Seminar", bobot: 40, mataKuliah: matkul5G)]
        
        semester5.mataKuliah = [matkul5A, matkul5B, matkul5C, matkul5D, matkul5E, matkul5F, matkul5G]
        
        
        let semester6 = Semester(nomor: 6, jurusan: jurusan)
        let matkul6A = MataKuliah(nama: "Internship", sks: 20, semester: semester6)
        matkul6A.komponen = [KomponenNilai(nama: "Administrasi", bobot: 10, mataKuliah: matkul6A),
                             KomponenNilai(nama: "Pembimbing", bobot: 25, mataKuliah: matkul6A),
                             KomponenNilai(nama: "Interview", bobot: 15, mataKuliah: matkul6A),
                             KomponenNilai(nama: "Perusahaan", bobot: 50, mataKuliah: matkul6A)]
        let matkul6B = MataKuliah(nama: "Final Project II", sks: 2, semester: semester6)
        matkul6B.komponen = [KomponenNilai(nama: "Sidang", bobot: 40, mataKuliah: matkul6B),
                             KomponenNilai(nama: "Prasidang", bobot: 15, mataKuliah: matkul6B),
                             KomponenNilai(nama: "Bimbingan", bobot: 40, mataKuliah: matkul6B),
                             KomponenNilai(nama: "Administrasi", bobot: 5, mataKuliah: matkul6B)]
        
        semester6.mataKuliah = [matkul6A, matkul6B]
        
        jurusan.semesters = [semester1, semester2, semester3, semester4, semester5, semester6]
        return jurusan
    }
}
