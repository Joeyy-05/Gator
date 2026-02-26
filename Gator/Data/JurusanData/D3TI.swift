//
//  D3TI.swift
//  Gator
//
//  Created by Foundation-009 on 07/07/25.
//


import Foundation
import SwiftData

// DIII - Teknologi Informasi
enum D3TI_Data {
    static func create() -> Jurusan {
        //Buat Jurusan
        let jurusan = Jurusan(nama: "DIII - Teknologi Informasi")
        
        //Buat Semester
        let semester1 = Semester(nomor: 1, jurusan: jurusan)
        //Buat Matkul
        let matkul1A = MataKuliah(nama: "Dasar Pemrograman", sks: 3, semester: semester1)
        matkul1A.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul1A),
                             KomponenNilai(nama: "Quiz", bobot: 25, mataKuliah: matkul1A),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul1A),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul1A),
                             KomponenNilai(nama: "Proyek", bobot: 20, mataKuliah: matkul1A),
                            ]
        
        let matkul1B = MataKuliah(nama: "Bahasa Inggris 1", sks: 2, semester: semester1)
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
        
        let matkul1D = MataKuliah(nama: "Pembentukan Karaktek Del", sks: 2, semester: semester1)
        matkul1D.komponen = [KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: matkul1D),
                             KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul1D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1D),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1D),
                            ]
        
        let matkul1E = MataKuliah(nama: "Rekayasa dan Perancangan Perangkat Lunak", sks: 3, semester: semester1)
        matkul1E.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul1E),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul1E),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul1E),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul1E),
                             KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul1E),
                            ]
        
        let matkul1F = MataKuliah(nama: "Pengenalan Basis Data", sks: 3, semester: semester1)
        matkul1F.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul1F),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul1F),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul1F),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul1F),
                             KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul1F),
                            ]
        
        let matkul1G = MataKuliah(nama: "Pengembangan Situs Web", sks: 3, semester: semester1)
        matkul1G.komponen = [KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul1G),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul1G),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1G),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1G),
                            ]
        
        let matkul1H = MataKuliah(nama: "Arsitektur dan Organisasi Komputer", sks: 3, semester: semester1)
        matkul1H.komponen = [KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul1H),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul1H),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1H),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul1H),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul1H),
                            ]
        semester1.mataKuliah = [matkul1A,matkul1B,matkul1C,matkul1D,matkul1E,matkul1F,matkul1G,matkul1H]

        let semester2 = Semester(nomor: 2, jurusan: jurusan)
        let matkul2A = MataKuliah(nama: "Bahasa Inggris 2", sks: 2, semester: semester2)
        matkul2A.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul2A),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul2A),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul2A),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul2A),
                             KomponenNilai(nama: "Class Participation", bobot: 15, mataKuliah: matkul2A),
                            ]
        
        let matkul2B = MataKuliah(nama: "Agama", sks: 2, semester: semester2)
        matkul2B.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul2B),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul2B),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul2B),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul2B),
                            ]
        
        let matkul2C = MataKuliah(nama: "Algoritma & Struktur Data", sks: 3, semester: semester2)
        matkul2C.komponen = [KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul2C),
                             KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul2C),
                             KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul2C),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul2C),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul2C),
                            ]
        
        let matkul2D = MataKuliah(nama: "Desain Pengalaman Pengguna", sks: 3, semester: semester2)
        matkul2D.komponen = [KomponenNilai(nama: "Tugas", bobot: 33.5, mataKuliah: matkul2D),
                             KomponenNilai(nama: "UTS", bobot: 31, mataKuliah: matkul2D),
                             KomponenNilai(nama: "UAS", bobot: 35.5, mataKuliah: matkul2D),
                            ]
        
        let matkul2E = MataKuliah(nama: "Sistem Operasi", sks: 3, semester: semester2)
        matkul2E.komponen = [KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul2E),
                             KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul2E),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul2E),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul2E),
                            ]
        
        let matkul2F = MataKuliah(nama: "Proyek Akhir Tahun 1", sks: 3, semester: semester2)
        matkul2F.komponen = [KomponenNilai(nama: "Nilai Seminar", bobot: 45, mataKuliah: matkul2F),
                             KomponenNilai(nama: "Nilai Bimbingan", bobot: 40, mataKuliah: matkul2F),
                             KomponenNilai(nama: "Administrasi", bobot: 10, mataKuliah: matkul2F),
                             KomponenNilai(nama: "Pameran", bobot: 5, mataKuliah: matkul2F),
                            ]
        
        let matkul2G = MataKuliah(nama: "Matematika Diskrit", sks: 3, semester: semester2)
        matkul2G.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul2G),
                             KomponenNilai(nama: "Quiz", bobot: 25, mataKuliah: matkul2G),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul2G),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul2G),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul2G),
                            ]
        semester2.mataKuliah = [matkul2A,matkul2B,matkul2C,matkul2D,matkul2E,matkul2F,matkul2G]
        
        let semester3 = Semester(nomor: 3, jurusan: jurusan)
        let matkul3A = MataKuliah(nama: "Probabilitas dan Statistika", sks: 3, semester: semester3)
        matkul3A.komponen = [KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul3A),
                             KomponenNilai(nama: "Quiz", bobot: 20, mataKuliah: matkul3A),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul3A),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul3A),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul3A),
                             KomponenNilai(nama: "Tugas Besar", bobot: 10, mataKuliah: matkul3A),
                            ]
        
        let matkul3B = MataKuliah(nama: "Pemrograman Berorientasi Objek", sks: 3, semester: semester3)
        matkul3B.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul3B),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul3B),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul3B),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul3B),
                             KomponenNilai(nama: "Proyek", bobot: 20, mataKuliah: matkul3B),
                            ]
        
        let matkul3C = MataKuliah(nama: "Sistem Basis Data", sks: 3, semester: semester3)
        matkul3C.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul3C),
                             KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul3C),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3C),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul3C),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul3C),
                            ]
        
        let matkul3D = MataKuliah(nama: "Pengembangan Aplikasi Mobile", sks: 3, semester: semester3)
        matkul3D.komponen = [KomponenNilai(nama: "Proyek MK", bobot: 20, mataKuliah: matkul3D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3D),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul3D),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul3D),
                            ]
        
        let matkul3E = MataKuliah(nama: "Skalabilitas & Data Analitik", sks: 3, semester: semester3)
        matkul3E.komponen = [KomponenNilai(nama: "Proyek MK", bobot: 20, mataKuliah: matkul3E),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3E),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul3E),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul3E),
                            ]
        
        let matkul3F = MataKuliah(nama: "Jaringan Komputer", sks: 3, semester: semester3)
        matkul3F.komponen = [KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul3F),
                             KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul3F),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3F),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul3F),
                            ]
        
        let matkul3G = MataKuliah(nama: "Teknologi IoT", sks: 2, semester: semester3)
        matkul3G.komponen = [KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul3G),
                             KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul3G),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul3G),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul3G),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul3G),
                            ]
        semester3.mataKuliah = [matkul3A,matkul3B,matkul3C,matkul3D,matkul3E,matkul3F,matkul3G]
        
        let semester4 = Semester(nomor: 4, jurusan: jurusan)
        let matkul4A = MataKuliah(nama: "Bahasa Inggris III", sks: 2, semester: semester4)
        matkul4A.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul4A),
                             KomponenNilai(nama: "Quiz", bobot: 25, mataKuliah: matkul4A),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul4A),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4A),
                             KomponenNilai(nama: "Weekly Assignment", bobot: 10, mataKuliah: matkul4A),
                            ]
        
        let matkul4B = MataKuliah(nama: "Pancasila", sks: 2, semester: semester4)
        matkul4B.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul4B),
                             KomponenNilai(nama: "Quiz", bobot: 20, mataKuliah: matkul4B),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4B),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4B),
                            ]
        
        let matkul4C = MataKuliah(nama: "Aljabar Linier", sks: 2, semester: semester4)
        matkul4C.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul4C),
                             KomponenNilai(nama: "Quiz", bobot: 25, mataKuliah: matkul4C),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul4C),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul4C),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul4C),
                            ]
        
        let matkul4D = MataKuliah(nama: "Pengujian dan Kualitas Perangkat Lunak", sks: 3, semester: semester4)
        matkul4D.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul4D),
                             KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul4D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4D),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4D),
                             KomponenNilai(nama: "Proyek", bobot: 15, mataKuliah: matkul4D),
                            ]
        
        let matkul4E = MataKuliah(nama: "Aplikasi Terdistribusi & Layanan Virtual", sks: 3, semester: semester4)
        matkul4E.komponen = [KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul4E),
                             KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul4E),
                             KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul4E),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul4E),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul4E),
                            ]
        
        let matkul4F = MataKuliah(nama: "Keamanan Perangkat Lunak", sks: 3, semester: semester4)
        matkul4F.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul4F),
                             KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul4F),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4F),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul4F),
                             KomponenNilai(nama: "Proyek", bobot: 15, mataKuliah: matkul4F),
                            ]
        
        let matkul4G = MataKuliah(nama: "Sistem Komputasi Awan", sks: 2, semester: semester4)
        matkul4G.komponen = [KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul4G),
                             KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul4G),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4G),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul4G),
                             KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul4G),
                            ]
        
        let matkul4H = MataKuliah(nama: "Proyek Akhir Tahun II", sks: 2, semester: semester4)
        matkul4H.komponen = [KomponenNilai(nama: "Nilai Seminar", bobot: 45, mataKuliah: matkul4H),
                             KomponenNilai(nama: "Nilai Bimbingan", bobot: 40, mataKuliah: matkul4H),
                             KomponenNilai(nama: "Nilai Administrasi", bobot: 10, mataKuliah: matkul4H),
                             KomponenNilai(nama: "Nilai Pameran", bobot: 5, mataKuliah: matkul4H),
                            ]

        semester4.mataKuliah = [matkul4A,matkul4B,matkul4C,matkul4D,matkul4E,matkul4F,matkul4G,matkul4H]
        
        let semester5 = Semester(nomor: 5, jurusan: jurusan)
        let matkul5A = MataKuliah(nama: "Magang", sks: 20, semester: semester5)
        matkul5A.komponen = [KomponenNilai(nama: "Administrasi", bobot: 10, mataKuliah: matkul5A),
                             KomponenNilai(nama: "Bimbingan", bobot: 20, mataKuliah: matkul5A),
                             KomponenNilai(nama: "Wawancara & Review", bobot: 20, mataKuliah: matkul5A),
                             KomponenNilai(nama: "Perusahaan", bobot: 50, mataKuliah: matkul5A),
                            ]
        
        semester5.mataKuliah = [matkul5A]
        
        let semester6 = Semester(nomor: 6, jurusan: jurusan)
        let matkul6A = MataKuliah(nama: "Kewarganegaraan", sks: 2, semester: semester6)
        matkul6A.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul6A),
                             KomponenNilai(nama: "Quiz", bobot: 20, mataKuliah: matkul6A),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul6A),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul6A),
                            ]
        
        let matkul6B = MataKuliah(nama: "Bahasa Indonesia", sks: 2, semester: semester6)
        matkul6B.komponen = [
                            ]
        
        let matkul6C = MataKuliah(nama: "Keteknowiraan", sks: 2, semester: semester4)
        matkul6C.komponen = [KomponenNilai(nama: "Tugas", bobot: 27, mataKuliah: matkul6B),
                              KomponenNilai(nama: "UTS", bobot: 35.5, mataKuliah: matkul6B),
                              KomponenNilai(nama: "UAS", bobot: 37.5, mataKuliah: matkul6B),
                            ]
        
        let matkul6D = MataKuliah(nama: "Kecerdasan Buatan", sks: 3, semester: semester6)
        matkul6D.komponen = [KomponenNilai(nama: "Proyek MK", bobot: 25, mataKuliah: matkul6D),
                             KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul6D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul6D),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul6D),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul6D),
                            ]
        
        let matkul6E = MataKuliah(nama: "Tata Kelola Teknologi Informasi", sks: 3, semester: semester6)
        matkul6E.komponen = [KomponenNilai(nama: "Quiz", bobot: 15, mataKuliah: matkul6E),
                             KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul6E),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul6E),
                             KomponenNilai(nama: "UAS", bobot: 20, mataKuliah: matkul6E),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul6E),
                            ]
        
        let matkul6F = MataKuliah(nama: "Socio-Informatika dan Profesionalisme", sks: 2, semester: semester6)
        matkul6F.komponen = [KomponenNilai(nama: "Tugas", bobot: 5, mataKuliah: matkul6F),
                             KomponenNilai(nama: "Quiz", bobot: 10, mataKuliah: matkul6F),
                             KomponenNilai(nama: "Adm", bobot: 10, mataKuliah: matkul6F),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul6F),
                             KomponenNilai(nama: "Sertifikasi", bobot: 45, mataKuliah: matkul6F),
                            ]
        
        let matkul6G = MataKuliah(nama: "Tugas Akhir", sks: 6, semester: semester6)
        matkul6G.komponen = [
                            ]
        
        semester6.mataKuliah = [matkul6A,matkul6B,matkul6C,matkul6D,matkul6E,matkul6F]
        
        jurusan.semesters = [semester1, semester2, semester3, semester4, semester5, semester6]
        return jurusan
    }
}
