//
//  S1TM.swift
//  Gator
//
//  Created by Foundation-009 on 07/07/25.
//


import Foundation
import SwiftData

// S1 - Teknik Metalurgi
enum S1TM_Data {
    static func create() -> Jurusan {
        let jurusan = Jurusan(nama: "S1 - Teknik Metalurgi")
        let semester1 = Semester(nomor: 1, jurusan: jurusan)
        let matkul1A = MataKuliah(nama: "Matematika Dasar I", sks: 2, semester: semester1)
        matkul1A.komponen = [KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: matkul1A),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul1A),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul1A),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul1A)]
        let matkul1B = MataKuliah(nama: "Fisika Dasar IB", sks: 2, semester: semester1)
        matkul1B.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul1B),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: matkul1B),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul1B),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul1B),
                             KomponenNilai(nama: "Tugas Proyek", bobot: 10, mataKuliah: matkul1B)]
        let matkul1C = MataKuliah(nama: "Bahasa Inggris I", sks: 3, semester: semester1)
        matkul1C.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul1C),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: matkul1C),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul1C),
                             KomponenNilai(nama: "UAS", bobot: 15, mataKuliah: matkul1C),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul1C)]
        let matkul1D = MataKuliah(nama: "Pembentukan Karakter Del", sks: 3, semester: semester1)
        matkul1D.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul1D),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul1D),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul1D),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul1D),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul1D)]
        let matkul1E = MataKuliah(nama: "Penyelesaian Masalah di Dunia Digital", sks: 3, semester: semester1)
        matkul1E.komponen = [KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: matkul1E),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul1E),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1E),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1E)]
        let matkul1F = MataKuliah(nama: "Pengantar Teknik Metalurgi", sks: 3, semester: semester1)
        matkul1F.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul1F),
                             KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul1F),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul1F),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1F),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1F)]
        let matkul1G = MataKuliah(nama: "Pengenalan Komputasi", sks: 3, semester: semester1)
        matkul1G.komponen = [KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: matkul1G),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul1G),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1G),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1G)]
        let matkul1H = MataKuliah(nama: "Kimia Dasar C", sks: 3, semester: semester1)
        matkul1H.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul1H),
                             KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul1H),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul1H),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1H),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1H)]
        
        semester1.mataKuliah = [matkul1A, matkul1B, matkul1C, matkul1D, matkul1E, matkul1F, matkul1G, matkul1H]

        let semester2 = Semester(nomor: 2, jurusan: jurusan)
        let matkul2A = MataKuliah(nama: "Matematika Dasar II", sks: 2, semester: semester2)
        matkul2A.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul2A),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul2A),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul2A),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul2A)]
        let matkul2B = MataKuliah(nama: "Fisika Dasar IIB", sks: 2, semester: semester2)
        matkul2B.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul2B),
                             KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul2B),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul2B),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul2B),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul2B)]
        let matkul2C = MataKuliah(nama: "Pengantar Rekayasa dan Desain", sks: 3, semester: semester2)
        matkul2C.komponen = [KomponenNilai(nama: "Praktikum", bobot: 5, mataKuliah: matkul2C),
                             KomponenNilai(nama: "Tugas", bobot: 5, mataKuliah: matkul2C),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul2C),
                             KomponenNilai(nama: "Laporan", bobot: 25, mataKuliah: matkul2C),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul2C),
                             KomponenNilai(nama: "Mini Proyek", bobot: 30, mataKuliah: matkul2C)]
        let matkul2D = MataKuliah(nama: "Bahasa Inggris II", sks: 3, semester: semester2)
        matkul2D.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul2D),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul2D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul2D),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul2D)]
        let matkul2E = MataKuliah(nama: "Kristalografi dan Mineralogi", sks: 3, semester: semester2)
        matkul2E.komponen = [KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul2E),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul2E),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul2E),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul2E)]
        let matkul2F = MataKuliah(nama: "Menggambar Teknik", sks: 1, semester: semester2)
        matkul2F.komponen = [KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul2F),
                             KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul2F),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul2F),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul2F),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul2F)]
        let matkul2G = MataKuliah(nama: "Pengantar Kimia Lanjut", sks: 3, semester: semester2)
        matkul2G.komponen = [KomponenNilai(nama: "Proyek", bobot: 10, mataKuliah: matkul2G),
                             KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul2G),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: matkul2G),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul2G),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul2G)]
        let matkul2H = MataKuliah(nama: "Bahasa Indonesia", sks: 2, semester: semester2)
        matkul2H.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul2H),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul2H),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul2H),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul2H)]
        
        semester2.mataKuliah = [matkul2A, matkul2B, matkul2C, matkul2D, matkul2E, matkul2F, matkul2G, matkul2H]
        
        let semester3 = Semester(nomor: 3, jurusan: jurusan)
        let matkul3A = MataKuliah(nama: "Metode Statistika", sks: 2, semester: semester3)
        matkul3A.komponen = [KomponenNilai(nama: "Prakatikum", bobot: 15, mataKuliah: matkul3A),
                             KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul3A),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul3A),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul3A),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul3A)]
        let matkul3B = MataKuliah(nama: "Termodinamika Metalurgi", sks: 2, semester: semester3)
        matkul3B.komponen = [KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: matkul3B),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3B),
                             KomponenNilai(nama: "UAS", bobot: 40, mataKuliah: matkul3B)]
        let matkul3C = MataKuliah(nama: "Operasi Teknik Metalurgi", sks: 3, semester: semester3)
        matkul3C.komponen = [KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul3C),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul3C),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3C),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul3C)]
        let matkul3D = MataKuliah(nama: "Karakterisasi Material", sks: 3, semester: semester3)
        matkul3D.komponen = [KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul3D),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul3D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3D),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul3D)]
        let matkul3E = MataKuliah(nama: "Metalurgi Fisik", sks: 3, semester: semester3)
        matkul3E.komponen = [KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul3E),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul3E),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3E),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul3E)]
        let matkul3F = MataKuliah(nama: "Kimia Fisika", sks: 3, semester: semester3)
        matkul3F.komponen = [KomponenNilai(nama: "Praktikum", bobot: 25, mataKuliah: matkul3F),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul3F),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3F),
                             KomponenNilai(nama: "UAS", bobot: 10, mataKuliah: matkul3F),
                             KomponenNilai(nama: "Proyek Akhir", bobot: 25, mataKuliah: matkul3F)]
        let matkul3G = MataKuliah(nama: "Matematika Teknik", sks: 3, semester: semester3)
        matkul3G.komponen = [KomponenNilai(nama: "Nilai Partisipasi", bobot: 5, mataKuliah: matkul3G),
                             KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul3G),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul3G),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul3G),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul3G)]
        let matkul3H = MataKuliah(nama: "Bahasa Inggris III", sks: 2, semester: semester3)
        matkul3H.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul3H),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul3H),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3H),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul3H)]
        semester3.mataKuliah = [matkul3A, matkul3B, matkul3C, matkul3D, matkul3E, matkul3F, matkul3G, matkul3H]
        
        let semester4 = Semester(nomor: 4, jurusan: jurusan)
        let matkul4A = MataKuliah(nama: "Pengolahan Mineral dan Batubara", sks: 2, semester: semester4)
        matkul4A.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul4A),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul4A),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4A),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4A)]
        let matkul4B = MataKuliah(nama: "Perhitungan Metalurgi Proses", sks: 3, semester: semester4)
        matkul4B.komponen = [KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul4B),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul4B),
                             KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul4B),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul4B)]
        let matkul4C = MataKuliah(nama: "Kinetika Metalurgi", sks: 3, semester: semester4)
        matkul4C.komponen = [KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul4C),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul4C),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4C),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul4C)]
        let matkul4D = MataKuliah(nama: "Fenomena Transport Metalurgi", sks: 3, semester: semester4)
        matkul4D.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul4D),
                             KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul4D),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul4D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4D),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4D)]
        let matkul4E = MataKuliah(nama: "Transformasi Fasa & Perlakuan Panas", sks: 3, semester: semester4)
        matkul4E.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul4E),
                             KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul4E),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul4E),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4E),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4E)]
        let matkul4F = MataKuliah(nama: "Teknik Tenaga Listrik", sks: 2, semester: semester4)
        matkul4F.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul4F),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul4F),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul4F),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul4F),
                             KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul4F)]
        let matkul4G = MataKuliah(nama: "Kekuatan material", sks: 3, semester: semester4)
        matkul4G.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul4G),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul4G),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul4G),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul4G),
                             KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul4G)]
        
        semester4.mataKuliah = [matkul4A, matkul4B, matkul4C, matkul4D, matkul4E, matkul4F, matkul4G]
        
        let semester5 = Semester(nomor: 5, jurusan: jurusan)
        let matkul5A = MataKuliah(nama: "Desain dan Analisis Eksperimen", sks: 3, semester: semester5)
        matkul5A.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul5A),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul5A),
                             KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul5A),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul5A),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul5A)]
        let matkul5B = MataKuliah(nama: "Metode Numerik", sks: 2, semester: semester5)
        matkul5B.komponen = [KomponenNilai(nama: "Partisipasi", bobot: 5, mataKuliah: matkul5B),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul5B),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul5B),
                             KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul5B),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul5B)]
        let matkul5C = MataKuliah(nama: "Ekonomika Teknik", sks: 3, semester: semester5)
        matkul5C.komponen = [KomponenNilai(nama: "Proyek", bobot: 10, mataKuliah: matkul5C),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul5C),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul5C),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul5C),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul5C)]
        let matkul5D = MataKuliah(nama: "Hidro-elektro metalurgi", sks: 3, semester: semester5)
        matkul5D.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul5D),
                             KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul5D),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul5D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul5D),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul5D)]
        let matkul5E = MataKuliah(nama: "Pirometalurgi", sks: 2, semester: semester5)
        matkul5E.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul5E),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul5E),
                             KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul5E),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul5E)]
        let matkul5F = MataKuliah(nama: "Kendali Proses", sks: 2, semester: semester5)
        matkul5F.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul5F),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul5F),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul5F),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul5F)]
        let matkul5G = MataKuliah(nama: "Tanur dan Bahan Bakar", sks: 3, semester: semester5)
        matkul5G.komponen = [KomponenNilai(nama: "Nilai Partisipasi", bobot: 5, mataKuliah: matkul5G),
                             KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul5G),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul5G),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul5G),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul5G)]
        let matkul5H = MataKuliah(nama: "Teknik Pengecoran Logam", sks: 2, semester: semester5)
        matkul5H.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul5H),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul5H),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul5H),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul5H)]
        
        semester5.mataKuliah = [matkul5A, matkul5B, matkul5C, matkul5D, matkul5E, matkul5F, matkul5G, matkul5H]
        
        let semester6 = Semester(nomor: 6, jurusan: jurusan)
        let matkul6A = MataKuliah(nama: "K3L dan AMDAL", sks: 3, semester: semester6)
        matkul6A.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul6A),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul6A),
                             KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul6A),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul6A),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul6A)]
        let matkul6B = MataKuliah(nama: "Pemanfaatan Mineral Industri", sks: 2, semester: semester6)
        matkul6B.komponen = [KomponenNilai(nama: "Partisipasi", bobot: 5, mataKuliah: matkul6B),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul6B),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul6B),
                             KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul6B),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul6B)]
        let matkul6C = MataKuliah(nama: "Korosi dan Proteksi Logam", sks: 3, semester: semester6)
        matkul6C.komponen = [KomponenNilai(nama: "Proyek", bobot: 10, mataKuliah: matkul6C),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul6C),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul6C),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul6C),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul6C)]
        let matkul6D = MataKuliah(nama: "Metalurgi besi baja", sks: 3, semester: semester6)
        matkul6D.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul6D),
                             KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul6D),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul6D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul6D),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul6D)]
        let matkul6E = MataKuliah(nama: "Teknik Pembentukan Logam", sks: 2, semester: semester6)
        matkul6E.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul6E),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul6E),
                             KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul6E),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul6E)]
        let matkul6F = MataKuliah(nama: "Analisis Kegagalan Logam", sks: 2, semester: semester6)
        matkul6F.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul6F),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul6F),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul6F),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul6F)]
        let matkul6G = MataKuliah(nama: "Kerja Praktek", sks: 2, semester: semester6)
        matkul6G.komponen = [KomponenNilai(nama: "Partisipasi", bobot: 5, mataKuliah: matkul6G),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul6G),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul6G),
                             KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul6G),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul6G)]
        let matkul6H = MataKuliah(nama: "Keteknowiraan", sks: 3, semester: semester6)
        matkul6H.komponen = [KomponenNilai(nama: "Proyek", bobot: 10, mataKuliah: matkul6H),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul6H),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul6H),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul6H),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul6H)]
        semester6.mataKuliah = [matkul6A, matkul6B, matkul6C, matkul6D, matkul6E, matkul6F, matkul6H]
        
        let semester7 = Semester(nomor: 7, jurusan: jurusan)
        let matkul7A = MataKuliah(nama: "Analisis Instrumental", sks: 2, semester: semester7)
        matkul7A.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul7A),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul7A),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul7A),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul7A)]
        let matkul7B = MataKuliah(nama: "Etika Profesional", sks: 3, semester: semester7)
        matkul7B.komponen = [KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul7B),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul7B),
                             KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul7B),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul7B)]
        let matkul7C = MataKuliah(nama: "Teknologi Pelapisan Logam", sks: 3, semester: semester7)
        matkul7C.komponen = [KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul7C),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul7C),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul7C),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul7C)]
        let matkul7D = MataKuliah(nama: "Mekanika Retakan", sks: 3, semester: semester7)
        matkul7D.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul7D),
                             KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul7D),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul7D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul7D),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul7D)]
        let matkul7E = MataKuliah(nama: "Metalurgi Serbuk", sks: 3, semester: semester7)
        matkul7E.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul7E),
                             KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul7E),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul7E),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul7E),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul7E)]
        let matkul7F = MataKuliah(nama: "Konversi Batubara", sks: 2, semester: semester7)
        matkul7F.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul7F),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul7F),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul7F),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul7F),
                             KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul7F)]
        let matkul7G = MataKuliah(nama: "Bahasa Mandarin", sks: 3, semester: semester7)
        matkul7G.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul7G),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul7G),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul7G),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul7G),
                             KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul7G)]
        let matkul7H = MataKuliah(nama: "Perancangan Pabrik Paduan Logam", sks: 3, semester: semester7)
        matkul7H.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul7H),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul7H),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul7H),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul7H),
                             KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul7H)]
        
        semester7.mataKuliah = [matkul7A, matkul7B, matkul7C, matkul7D, matkul7E, matkul7F, matkul7G, matkul7H]
        
        let semester8 = Semester(nomor: 8, jurusan: jurusan)
        let matkul8A = MataKuliah(nama: "Tugas Akhir", sks: 2, semester: semester8)
        matkul8A.komponen = [KomponenNilai(nama: "Bimbingan", bobot: 60, mataKuliah: matkul8A),
                             KomponenNilai(nama: "Seminar", bobot: 30, mataKuliah: matkul8A),
                             KomponenNilai(nama: "Laporan", bobot: 10, mataKuliah: matkul8A)]
        let matkul8B = MataKuliah(nama: "Tugas Akhir", sks: 2, semester: semester8)
        matkul8B.komponen = [KomponenNilai(nama: "Tugas Akhir", bobot: 100, mataKuliah: matkul8B)]
        let matkul8C = MataKuliah(nama: "Pancasila", sks: 3, semester: semester8)
        matkul8C.komponen = [KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul8C),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul8C),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul8C),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul8C)]
        let matkul8D = MataKuliah(nama: "Agama", sks: 3, semester: semester8)
        matkul8D.komponen = [KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul8D),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul8D),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul8D),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul8D)]
        semester8.mataKuliah = [matkul8A, matkul8B, matkul8C, matkul8D]
        
        jurusan.semesters = [semester1, semester2, semester3, semester4, semester5, semester6, semester7, semester8]
        return jurusan
    }
}
