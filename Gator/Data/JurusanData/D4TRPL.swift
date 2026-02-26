//  D4TRPL.swift
//  Gator
//
//  Created by Foundation-016 on 07/07/25.
//


import Foundation
import SwiftData

// DIV TRPL
enum D4TRPL_Data {
    static func create() -> Jurusan {
        //Buat Jurusan
        let jurusan = Jurusan(nama: "DIV - Teknologi Rekayasa Perangkat Lunak")
        
        //Buat Semester
        let semester1 = Semester(nomor: 1, jurusan: jurusan)
        //Buat Matkul
        let matkul1A = MataKuliah(nama: "Dasar Pemrograman", sks: 3, semester: semester1)
        matkul1A.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul1A),
                             KomponenNilai(nama: "Quiz", bobot: 25, mataKuliah: matkul1A),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul1A),
                             KomponenNilai(nama: "UAS", bobot: 20, mataKuliah: matkul1A),
                             KomponenNilai(nama: "Proyek", bobot: 20, mataKuliah: matkul1A),
                            ]
        
        let matkul1B = MataKuliah(nama: "Bahasa Inggris I", sks: 2, semester: semester1)
        matkul1B.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul1B),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul1B),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul1B),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1B),
                             KomponenNilai(nama: "Partisipasi", bobot: 15, mataKuliah: matkul1B),
                            ]
        
        let matkul1C = MataKuliah(nama: "Penyelesaian Masalah di Dunia Digital", sks: 2, semester: semester1)
        matkul1C.komponen = [KomponenNilai(nama: "Quiz", bobot: 20, mataKuliah: matkul1C),
                             KomponenNilai(nama: "Projek", bobot: 80, mataKuliah: matkul1C),
                            ]
        
        let matkul1D = MataKuliah(nama: "Pembentukan Karakter Del", sks: 2, semester: semester1)
        matkul1D.komponen = [KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: matkul1D),
                             KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul1D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1D),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1D),
                            ]
        
        let matkul1E = MataKuliah(nama: "Pengenalan Rekayasa Perangkat Lunak", sks: 3, semester: semester1)
        matkul1E.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul1E),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul1E),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul1E),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul1E),
                             KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul1E),
                            ]
        
        let matkul1F = MataKuliah(nama: "Pengembangan Situs Web I", sks: 3, semester: semester1) // Changed from "Pengenalan Basis Data" based on image
        matkul1F.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul1F),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul1F),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul1F),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul1F),
                             KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul1F),
                            ]
        
        let matkul1G = MataKuliah(nama: "Matematika Diskrit", sks: 3, semester: semester1) // Changed from "Pengembangan Situs Web 1" based on image
        matkul1G.komponen = [KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul1G),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul1G),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1G),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1G),
                            ]
        
        let matkul1H = MataKuliah(nama: "Arsitektur dan Organisasi Komputer", sks: 2, semester: semester1) // Changed SKS to 2 based on image
        matkul1H.komponen = [KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul1H),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul1H),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1H),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul1H),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul1H),
                            ]
        
        // The image doesn't list "Pengenalan Basis Data" explicitly for Semester 1,
        // but it was in your original code as 1F. I'm keeping the original order from the image for semester 1.
        semester1.mataKuliah = [matkul1H, matkul1C, matkul1A, matkul1G, matkul1F, matkul1E, matkul1B, matkul1D]

        let semester2 = Semester(nomor: 2, jurusan: jurusan)
        let matkul2A = MataKuliah(nama: "Sistem Operasi", sks: 3, semester: semester2) // Updated name and SKS
        matkul2A.komponen = [KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul2A),
                             KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul2A),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul2A),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul2A),
                            ]
        
        let matkul2B = MataKuliah(nama: "Analisis Kebutuhan Perangkat Lunak", sks: 3, semester: semester2) // Updated name and SKS
        matkul2B.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul2B),
                             KomponenNilai(nama: "Quiz", bobot: 25, mataKuliah: matkul2B),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul2B),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul2B),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul2B),
                            ]
        
        let matkul2C = MataKuliah(nama: "Pengembangan Situs Web II", sks: 3, semester: semester2) // Updated name and SKS
        matkul2C.komponen = [KomponenNilai(nama: "Tugas", bobot: 34, mataKuliah: matkul2C),
                             KomponenNilai(nama: "UTS", bobot: 31, mataKuliah: matkul2C),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul2C),
                            ]
        
        let matkul2D = MataKuliah(nama: "Pengenalan Basis Data", sks: 3, semester: semester2) // Updated name and SKS
        matkul2D.komponen = [KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul2D),
                             KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul2D),
                             KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul2D),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul2D),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul2D),
                            ]
        
        let matkul2E = MataKuliah(nama: "Proyek Akhir Tahun I", sks: 3, semester: semester2) // Updated name and SKS
        matkul2E.komponen = [KomponenNilai(nama: "Nilai Seminar", bobot: 45, mataKuliah: matkul2E),
                             KomponenNilai(nama: "Nilai Bimbingan", bobot: 40, mataKuliah: matkul2E),
                             KomponenNilai(nama: "Administrasi", bobot: 10, mataKuliah: matkul2E),
                             KomponenNilai(nama: "Pameran", bobot: 5, mataKuliah: matkul2E),
                            ]
        
        let matkul2F = MataKuliah(nama: "Agama", sks: 2, semester: semester2) // Added as per image
        matkul2F.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul2F),
                             KomponenNilai(nama: "Quiz", bobot: 20, mataKuliah: matkul2F),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul2F),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul2F),
                            ]
        
        let matkul2G = MataKuliah(nama: "Bahasa Indonesia", sks: 2, semester: semester2) // Added as per image
        matkul2G.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul2G),
                             KomponenNilai(nama: "Quiz", bobot: 20, mataKuliah: matkul2G),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul2G),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul2G),
                            ]
        semester2.mataKuliah = [matkul2A, matkul2B, matkul2C, matkul2D, matkul2E, matkul2F, matkul2G]
        
        let semester3 = Semester(nomor: 3, jurusan: jurusan)
        let matkul3A = MataKuliah(nama: "Jaringan Komputer", sks: 2, semester: semester3) // Updated name and SKS
        matkul3A.komponen = [KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul3A),
                             KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul3A),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3A),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul3A),
                            ]
        
        let matkul3B = MataKuliah(nama: "Algoritma dan Struktur Data", sks: 3, semester: semester3) // Updated name and SKS
        matkul3B.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul3B),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul3B),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul3B),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul3B),
                             KomponenNilai(nama: "Proyek", bobot: 20, mataKuliah: matkul3B),
                            ]
        
        let matkul3C = MataKuliah(nama: "Pengenalan Kecerdasan Buatan", sks: 2, semester: semester3) // Updated name and SKS
        matkul3C.komponen = [KomponenNilai(nama: "Quiz", bobot: 20, mataKuliah: matkul3C),
                             KomponenNilai(nama: "Projek", bobot: 80, mataKuliah: matkul3C),
                            ]
        
        let matkul3D = MataKuliah(nama: "Perancangan Antarmuka Pengguna", sks: 3, semester: semester3) // Updated name and SKS
        matkul3D.komponen = [KomponenNilai(nama: "Proyek MK", bobot: 20, mataKuliah: matkul3D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3D),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul3D),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul3D),
                            ]
        
        let matkul3E = MataKuliah(nama: "Sistem Basis Data", sks: 3, semester: semester3) // Updated name and SKS
        matkul3E.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul3E),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul3E),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3E),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul3E),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul3E),
                            ]
        
        let matkul3F = MataKuliah(nama: "Logika Informatika", sks: 2, semester: semester3) // Updated name and SKS
        matkul3F.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul3F),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul3F),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul3F),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul3F),
                             KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul3F),
                            ]
        
        let matkul3G = MataKuliah(nama: "Pemrograman Berorientasi Objek", sks: 3, semester: semester3) // Updated name and SKS
        matkul3G.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul3G),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul3G),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul3G),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul3G),
                             KomponenNilai(nama: "Proyek", bobot: 20, mataKuliah: matkul3G),
                            ]
        
        let matkul3H = MataKuliah(nama: "Bahasa Inggris II", sks: 2, semester: semester3) // Added based on image
        matkul3H.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul3H),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul3H),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul3H),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul3H),
                             KomponenNilai(nama: "Class Participation", bobot: 15, mataKuliah: matkul3H),
                            ]
        semester3.mataKuliah = [matkul3A, matkul3B, matkul3C, matkul3D, matkul3E, matkul3F, matkul3G, matkul3H]
        
        let semester4 = Semester(nomor: 4, jurusan: jurusan)
        let matkul4A = MataKuliah(nama: "Pengembangan Aplikasi Terdistribusi", sks: 3, semester: semester4) // Updated name and SKS
        matkul4A.komponen = [KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul4A),
                             KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul4A),
                             KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul4A),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul4A),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul4A),
                            ]
        
        let matkul4B = MataKuliah(nama: "Pengembangan Aplikasi Mobile", sks: 3, semester: semester4) // Updated name and SKS
        matkul4B.komponen = [KomponenNilai(nama: "Proyek MK", bobot: 20, mataKuliah: matkul4B),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4B),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4B),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul4B),
                            ]
        
        let matkul4C = MataKuliah(nama: "Proyek Akhir Tahun II", sks: 3, semester: semester4) // Updated name and SKS
        matkul4C.komponen = [KomponenNilai(nama: "Nilai Seminar", bobot: 45, mataKuliah: matkul4C),
                             KomponenNilai(nama: "Nilai Bimbingan", bobot: 40, mataKuliah: matkul4C),
                             KomponenNilai(nama: "Nilai Administrasi", bobot: 10, mataKuliah: matkul4C),
                             KomponenNilai(nama: "Nilai Pameran", bobot: 5, mataKuliah: matkul4C),
                            ]
        
        let matkul4D = MataKuliah(nama: "Pengujian Perangkat Lunak", sks: 3, semester: semester4) // Updated name and SKS
        matkul4D.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul4D),
                             KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul4D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4D),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4D),
                             KomponenNilai(nama: "Proyek", bobot: 15, mataKuliah: matkul4D),
                            ]
        
        let matkul4E = MataKuliah(nama: "Pancasila", sks: 2, semester: semester4) // Updated name and SKS
        matkul4E.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul4E),
                             KomponenNilai(nama: "Quiz", bobot: 20, mataKuliah: matkul4E),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4E),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4E),
                            ]
        
        let matkul4F = MataKuliah(nama: "Probabilitas dan Statistik", sks: 3, semester: semester4) // Updated name and SKS
        matkul4F.komponen = [KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul4F),
                             KomponenNilai(nama: "Quiz", bobot: 20, mataKuliah: matkul4F),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul4F),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul4F),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul4F),
                             KomponenNilai(nama: "Tugas Besar", bobot: 10, mataKuliah: matkul4F),
                            ]
        
        let matkul4G = MataKuliah(nama: "Technopreneurship", sks: 3, semester: semester4) // Updated name and SKS
        matkul4G.komponen = [KomponenNilai(nama: "Tugas", bobot: 27, mataKuliah: matkul4G),
                             KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul4G),
                             KomponenNilai(nama: "UAS", bobot: 38, mataKuliah: matkul4G),
                            ]
        
        semester4.mataKuliah = [matkul4A, matkul4B, matkul4C, matkul4D, matkul4E, matkul4F, matkul4G]
        
        let semester5 = Semester(nomor: 5, jurusan: jurusan)
        let matkul5A = MataKuliah(nama: "Algoritma Lanjut", sks: 3, semester: semester5)
        matkul5A.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul5A),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul5A),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul5A),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul5A),
                             KomponenNilai(nama: "Proyek", bobot: 15, mataKuliah: matkul5A),
                            ]
        
        let matkul5B = MataKuliah(nama: "Keamanan Perangkat Lunak", sks: 3, semester: semester5)
        matkul5B.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul5B),
                             KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul5B),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul5B),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul5B),
                             KomponenNilai(nama: "Proyek", bobot: 15, mataKuliah: matkul5B),
                            ]
        
        let matkul5C = MataKuliah(nama: "Automata", sks: 3, semester: semester5)
        matkul5C.komponen = [KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul5C),
                             KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul5C),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul5C),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul5C),
                            ]
        
        let matkul5D = MataKuliah(nama: "Pembelajaran Mesin", sks: 3, semester: semester5)
        matkul5D.komponen = [KomponenNilai(nama: "Proyek MK", bobot: 25, mataKuliah: matkul5D),
                             KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul5D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul5D),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul5D),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul5D),
                            ]
        
        let matkul5E = MataKuliah(nama: "Data Analitik", sks: 3, semester: semester5)
        matkul5E.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul5E),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul5E),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul5E),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul5E),
                             KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul5E),
                            ]
        
        let matkul5F = MataKuliah(nama: "Kualitas Perangkat Lunak", sks: 3, semester: semester5)
        matkul5F.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul5F),
                             KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul5F),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul5F),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul5F),
                             KomponenNilai(nama: "Proyek", bobot: 15, mataKuliah: matkul5F),
                            ]
        
        semester5.mataKuliah = [matkul5A, matkul5B, matkul5C, matkul5D, matkul5E, matkul5F]
        
        let semester6 = Semester(nomor: 6, jurusan: jurusan)
        let matkul6A = MataKuliah(nama: "UI/UX Design", sks: 3, semester: semester6)
        matkul6A.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul6A),
                             KomponenNilai(nama: "Quiz", bobot: 20, mataKuliah: matkul6A),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul6A),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul6A),
                            ]
        
        let matkul6B = MataKuliah(nama: "Manajemen Proyek", sks: 3, semester: semester6)
        matkul6B.komponen = [KomponenNilai(nama: "Tugas", bobot: 27, mataKuliah: matkul6B),
                             KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul6B),
                             KomponenNilai(nama: "UAS", bobot: 37, mataKuliah: matkul6B),
                            ]
        
        let matkul6C = MataKuliah(nama: "Big Data", sks: 2, semester: semester6)
        matkul6C.komponen = [KomponenNilai(nama: "Tugas", bobot: 27, mataKuliah: matkul6C),
                             KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul6C),
                             KomponenNilai(nama: "UAS", bobot: 37, mataKuliah: matkul6C),
                            ]
        
        let matkul6D = MataKuliah(nama: "Data Science (Mata Kuliah Pilihan 1)", sks: 3, semester: semester6)
        matkul6D.komponen = [KomponenNilai(nama: "Proyek MK", bobot: 25, mataKuliah: matkul6D),
                             KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul6D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul6D),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul6D),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul6D),
                            ]
        
        let matkul6E = MataKuliah(nama: "Proyek Akhir Tahun III", sks: 4, semester: semester6)
        matkul6E.komponen = [KomponenNilai(nama: "Nilai Seminar", bobot: 45, mataKuliah: matkul6E),
                             KomponenNilai(nama: "Nilai Bimbingan", bobot: 40, mataKuliah: matkul6E),
                             KomponenNilai(nama: "Administrasi", bobot: 10, mataKuliah: matkul6E),
                             KomponenNilai(nama: "Pameran", bobot: 5, mataKuliah: matkul6E),
                            ]
        
        let matkul6F = MataKuliah(nama: "Bahasa Inggris III", sks: 2, semester: semester6)
        matkul6F.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul6F),
                             KomponenNilai(nama: "Quiz", bobot: 25, mataKuliah: matkul6F),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul6F),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul6F),
                             KomponenNilai(nama: "Weekly Assignment", bobot: 10, mataKuliah: matkul6F),
                            ]
        
        semester6.mataKuliah = [matkul6A, matkul6B, matkul6C, matkul6D, matkul6E, matkul6F]
        
        // Semester 7
        let semester7 = Semester(nomor: 7, jurusan: jurusan)
        let matkul7A = MataKuliah(nama: "Magang", sks: 20, semester: semester7)
        matkul7A.komponen = [KomponenNilai(nama: "Laporan Magang", bobot: 40, mataKuliah: matkul7A),
                             KomponenNilai(nama: "Penilaian Perusahaan", bobot: 40, mataKuliah: matkul7A),
                             KomponenNilai(nama: "Presentasi", bobot: 20, mataKuliah: matkul7A),
                            ]
        
        let matkul7B = MataKuliah(nama: "Metodologi Penelitian", sks: 2, semester: semester7)
        matkul7B.komponen = [KomponenNilai(nama: "Proposal Penelitian", bobot: 50, mataKuliah: matkul7B),
                             KomponenNilai(nama: "Presentasi Proposal", bobot: 30, mataKuliah: matkul7B),
                             KomponenNilai(nama: "Kehadiran", bobot: 20, mataKuliah: matkul7B),
                            ]
        semester7.mataKuliah = [matkul7A, matkul7B]
        
        // Semester 8
        let semester8 = Semester(nomor: 8, jurusan: jurusan)
        let matkul8A = MataKuliah(nama: "Tugas Akhir", sks: 6, semester: semester8)
        matkul8A.komponen = [KomponenNilai(nama: "Laporan TA", bobot: 40, mataKuliah: matkul8A),
                             KomponenNilai(nama: "Sidang TA", bobot: 40, mataKuliah: matkul8A),
                             KomponenNilai(nama: "Pembimbingan", bobot: 20, mataKuliah: matkul8A),
                            ]
        
        let matkul8B = MataKuliah(nama: "Kewarganegaraan", sks: 2, semester: semester8)
        matkul8B.komponen = [KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul8B),
                             KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul8B),
                             KomponenNilai(nama: "UAS", bobot: 40, mataKuliah: matkul8B),
                            ]
        
        let matkul8C = MataKuliah(nama: "Bahasa Inggris IV", sks: 2, semester: semester8)
        matkul8C.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul8C),
                             KomponenNilai(nama: "Quiz", bobot: 20, mataKuliah: matkul8C),
                             KomponenNilai(nama: "UAS", bobot: 60, mataKuliah: matkul8C),
                            ]
        semester8.mataKuliah = [matkul8A, matkul8B, matkul8C]
        
        jurusan.semesters = [semester1, semester2, semester3, semester4, semester5, semester6, semester7, semester8]
        return jurusan
    }
}
