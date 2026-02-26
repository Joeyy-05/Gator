//
//  S1SI.swift
//  Gator
//
//  Created by Foundation-009 on 07/07/25.
//


import Foundation
import SwiftData

// S1 - Sistem Informasi
enum S1SI_Data {
    static func create() -> Jurusan {
        let jurusan = Jurusan(nama: "S1 - Sistem Informasi")
        let semester1 = Semester(nomor: 1, jurusan: jurusan)
        let matkul1A = MataKuliah(nama: "Matematika Dasar 1", sks: 4, semester: semester1)
        matkul1A.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul1A),
            KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: matkul1A),
            KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul1A),
            KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul1A),
            KomponenNilai(nama: "Tugas Proyek", bobot: 10, mataKuliah: matkul1A)]
        
        
        let matkul1B = MataKuliah(nama: "Bahasa Inggris", sks: 2, semester: semester1)
        matkul1B.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul1B),
            KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul1B),
            KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul1B),
            KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1B),
            KomponenNilai(nama: "Tambahan 1", bobot: 15, mataKuliah: matkul1B)]

        let matkul1C = MataKuliah(nama: "Pembentukan Karakter Del", sks: 2, semester: semester1)
        matkul1C.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: matkul1C),
            KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul1C),
            KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1C),
            KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1C)]
        
        let matkul1D = MataKuliah(nama: "Matematika Diskrit", sks: 3, semester: semester1)
        matkul1D.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul1D),
            KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul1D),
            KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul1D),
            KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul1D),
            KomponenNilai(nama: "Keaktifan", bobot: 5, mataKuliah: matkul1D),
            KomponenNilai(nama: "Proyek", bobot: 10, mataKuliah: matkul1D)]
        
        let matkul1E = MataKuliah(nama: "Dasar Sistem Informasi", sks: 3, semester: semester1)
        matkul1E.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul1E),
            KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul1E),
            KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1E),
            KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1E)]
        
        let matkul1F = MataKuliah(nama: "Pemograman Visual", sks: 2, semester: semester1)
        matkul1F.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 30, mataKuliah: matkul1F),
            KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul1F),
            KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1F),
            KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1F)]
        
        let matkul1G = MataKuliah(nama: "Penyelesaian Masalah di Dunia Digital", sks: 2, semester: semester1)
        matkul1G.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul1G),
            KomponenNilai(nama: "Quis", bobot: 80, mataKuliah: matkul1G)]
        
        
        
        semester1.mataKuliah = [matkul1A, matkul1B, matkul1C, matkul1D, matkul1E, matkul1F, matkul1G]

        let semester2 = Semester(nomor: 2, jurusan: jurusan)
        let matkul2A = MataKuliah(nama: "Matematika Dasar 2", sks: 4, semester: semester2)
        matkul2A.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul2A),
            KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: matkul2A),
            KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul2A),
            KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul2A),
            KomponenNilai(nama: "Tugas Proyek", bobot: 10, mataKuliah: matkul2A)]
        
        
        let matkul2B = MataKuliah(nama: "Pengantar Rekayasa Desain", sks: 2, semester: semester2)
        matkul2B.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul2B),
            KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul2B),
            KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul2B),
            KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul2B)]

        let matkul2C = MataKuliah(nama: "Agama", sks: 2, semester: semester2)
        matkul2C.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul2C),
            KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul2C),
            KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul2C),
            KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul2C)]
        
        let matkul2D = MataKuliah(nama: "Pemrograman Prosedural (+P)", sks: 3, semester: semester2)
        matkul2D.komponen = [
            KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul2D),
            KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul2D),
            KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul2D),
            KomponenNilai(nama: "Praktikum(Tugas)", bobot: 20, mataKuliah: matkul2D),
            KomponenNilai(nama: "Keaktifan", bobot: 10, mataKuliah: matkul2D)]
        
        let matkul2E = MataKuliah(nama: "Arsitektur dan Organisasi Komputer (+P)", sks: 3, semester: semester2)
        matkul2E.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul2E),
            KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul2E),
            KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul2E),
            KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul2E),
            KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul2E)]
        
        let matkul2F = MataKuliah(nama: "Basis Data (+P)", sks: 2, semester: semester2)
        matkul2F.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul2F),
            KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul2F),
            KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul2F),
            KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul2F),
            KomponenNilai(nama: "UAS", bobot: 20, mataKuliah: matkul2F),
            KomponenNilai(nama: "Proyek", bobot: 20, mataKuliah: matkul2F),
            KomponenNilai(nama: "Partisipasi", bobot: 10, mataKuliah: matkul2F)]
        
        let matkul2G = MataKuliah(nama: "Bahasa Indonesia", sks: 2, semester: semester2)
        matkul2G.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: matkul2G),
            KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul2G),
            KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul2G),
            KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul2G)]

        semester2.mataKuliah = [matkul2A, matkul2B, matkul2C, matkul2D, matkul2E, matkul2F, matkul2G]
        
        let semester3 = Semester(nomor: 3, jurusan: jurusan)
        let matkul3A = MataKuliah(nama: "Probabilitas dan Statistika", sks: 4, semester: semester3)
        matkul3A.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul3A),
            KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul3A),
            KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul3A),
            KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul3A),
            KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul3A),
            KomponenNilai(nama: "Tugas Besar", bobot: 10, mataKuliah: matkul3A)]
        
        let matkul3B = MataKuliah(nama: "Keteknowiraan", sks: 2, semester: semester3)
        matkul3B.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: matkul3B),
            KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3B),
            KomponenNilai(nama: "UAS", bobot: 40, mataKuliah: matkul3B)]

        let matkul3C = MataKuliah(nama: "Manajemen Proses Bisnis", sks: 2, semester: semester3)
        matkul3C.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul3C),
            KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul3C),
            KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul3C),
            KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul3C),
            KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul3C),
            KomponenNilai(nama: "Proyek", bobot: 20, mataKuliah: matkul3C)]
        
        let matkul3D = MataKuliah(nama: "Algoritma dan Struktur Data", sks: 3, semester: semester3)
        matkul3D.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul3D),
            KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul3D),
            KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul3D),
            KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul3D),
            KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul3D)]
        
        let matkul3E = MataKuliah(nama: "Hukum dan Etika Siber", sks: 3, semester: semester3)
        matkul3E.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul3E),
            KomponenNilai(nama: "UTS", bobot: 40, mataKuliah: matkul3E),
            KomponenNilai(nama: "UAS", bobot: 40, mataKuliah: matkul3E)]
        
        let matkul3F = MataKuliah(nama: "Bahasa Inggris II", sks: 2, semester: semester3)
        matkul3F.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul3F),
            KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul3F),
            KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3F),
            KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul3F),
            KomponenNilai(nama: "Tambahan 1", bobot: 15, mataKuliah: matkul3F)]
        
        let matkul3G = MataKuliah(nama: "Pancasila", sks: 2, semester: semester3)
        matkul3G.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul3G),
            KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul3G),
            KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3G),
            KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul3G)]
        
        semester3.mataKuliah = [matkul3A, matkul3B, matkul3C, matkul3D, matkul3E, matkul3F, matkul3G]
        
        let semester4 = Semester(nomor: 4, jurusan: jurusan)
        let matkul4A = MataKuliah(nama: "Aljabar Linear", sks: 3, semester: semester4)
        matkul4A.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul4A),
            KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: matkul4A),
            KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul4A),
            KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul4A)]
        
        
        let matkul4B = MataKuliah(nama: "Jaringan Komputer (+P)", sks: 3, semester: semester4)
        matkul4B.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul4B),
            KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul4B),
            KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4B),
            KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4B)]

        let matkul4C = MataKuliah(nama: "Sistem Operasi(+P)", sks: 3, semester: semester4)
        matkul4C.komponen = [
            KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul4C),
            KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4C),
            KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4C),
            KomponenNilai(nama: "Praktikum(Tugas)", bobot: 15, mataKuliah: matkul4C),
            KomponenNilai(nama: "Keaktifan", bobot: 10, mataKuliah: matkul4C)]
        
        let matkul4D = MataKuliah(nama: "Analisis dan Perancangan Sistem", sks: 4, semester: semester4)
        matkul4D.komponen = [
            KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul4D),
            KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul4D),
            KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul4D),
            KomponenNilai(nama: "Praktikum dan Tugas", bobot: 15, mataKuliah: matkul4D),
            KomponenNilai(nama: "Proyek", bobot: 20, mataKuliah: matkul4D)]
        
        let matkul4E = MataKuliah(nama: "UI/UX", sks: 3, semester: semester4)
        matkul4E.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: matkul4E),
            KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul4E),
            KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul4E)]
        
        let matkul4F = MataKuliah(nama: "Pemrograman Berorientasi Objek", sks: 3, semester: semester4)
        matkul4F.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 30, mataKuliah: matkul4F),
            KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul4F),
            KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul4F),
            KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul4F),
            KomponenNilai(nama: "Mini Quis", bobot: 10, mataKuliah: matkul4F),]
        
        semester4.mataKuliah = [matkul4A, matkul4B, matkul4C, matkul4D, matkul4E, matkul4F]
        
        let semester5 = Semester(nomor: 5, jurusan: jurusan)
        let matkul5A = MataKuliah(nama: "Kecerdasan buatan", sks: 3, semester: semester5)
        matkul5A.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul5A),
            KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: matkul5A),
            KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul5A),
            KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul5A),
            KomponenNilai(nama: "UAS", bobot: 20, mataKuliah: matkul5A)]
        
        let matkul5B = MataKuliah(nama: "Pemrograman dan Pengujian Aplikasi Web", sks: 3, semester: semester5)
        matkul5B.komponen = [
            KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul5B),
            KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul5B),
            KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul5B),
            KomponenNilai(nama: "Proyek", bobot: 30, mataKuliah: matkul5B)]
        
        let matkul5C = MataKuliah(nama: "Basis Data lanjut", sks: 3, semester: semester5)
        matkul5C.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul5C),
            KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul5C),
            KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul5C),
            KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul5C),
            KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul5C)]
        
        let matkul5D = MataKuliah(nama: "Manajemen Proyek Sistem Informasi", sks: 3, semester: semester5)
        matkul5D.komponen = [
                KomponenNilai(nama: "Praktikum", bobot: 40, mataKuliah: matkul5D),
                KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul5D),
                KomponenNilai(nama: "UTS", bobot: 10, mataKuliah: matkul5D),
                KomponenNilai(nama: "UAS", bobot: 20, mataKuliah: matkul5D),
                KomponenNilai(nama: "Partisipasi", bobot: 10, mataKuliah: matkul5D)]
        
        let matkul5E = MataKuliah(nama: "Kepemimpinan dan Manajemen Sistem Informasi", sks: 3, semester: semester5)
        matkul5E.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul5E),
            KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul5E),
            KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul5E),
            KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul5E),
            KomponenNilai(nama: "Partisipasi", bobot: 5, mataKuliah: matkul5E)]
        
        let matkul5F = MataKuliah(nama: "Keamanan Sistem", sks: 3, semester: semester5)
        matkul5F.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul5F),
            KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul5F),
            KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul5F),
            KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul5F),
            KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul5F)]
        
        semester5.mataKuliah = [matkul5A, matkul5B, matkul5C, matkul5D, matkul5E, matkul5F]
            
        let semester6 = Semester(nomor: 6, jurusan: jurusan)
        let matkul6A = MataKuliah(nama: "Bahasa Inggris III", sks: 2, semester: semester6)
        matkul6A.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul6A),
            KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul6A),
            KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: matkul6A),
            KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul6A),
            KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul6A)]

        let matkul6B = MataKuliah(nama: "Perencanaan Sumber Daya Perusahaan", sks: 4, semester: semester6)
        matkul6B.komponen = [
                KomponenNilai(nama: "Praktikum", bobot: 8, mataKuliah: matkul6B),
                KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul6B),
                KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul6B),
                KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul6B),
                KomponenNilai(nama: "UAS", bobot: 20, mataKuliah: matkul6B),
                KomponenNilai(nama: "Proyek", bobot: 20, mataKuliah: matkul6B),
                KomponenNilai(nama: "Partisipasi", bobot: 7, mataKuliah: matkul6B)]
            
        let matkul6C = MataKuliah(nama: "Gudang Data dan Kecerdasan Bisnis", sks: 4, semester: semester6)
        matkul6C.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul6C),
            KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul6C),
            KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul6C),
            KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul6C),
            KomponenNilai(nama: "UAS", bobot: 20, mataKuliah: matkul6C),
            KomponenNilai(nama: "Proyek", bobot: 15, mataKuliah: matkul6C)]

        let matkul6D = MataKuliah(nama: "Proyek Sistem Informasi", sks: 4, semester: semester6)
        matkul6D.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 100, mataKuliah: matkul6D)]

        let matkul6E = MataKuliah(nama: "Metodologi Penelitian dan Penulisan Ilmiah", sks: 2, semester: semester6)
        matkul6E.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul6E),
            KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul6E),
            KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul6E),
            KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul6E),
            KomponenNilai(nama: "UAS", bobot: 20, mataKuliah: matkul6E),
            KomponenNilai(nama: "Partisipasi", bobot: 10, mataKuliah: matkul6E)]

        let matkul6F = MataKuliah(nama: "Penambangan Data", sks: 4, semester: semester6)
        matkul6F.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul6F),
            KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul6F),
            KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul6F),
            KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul6F),
            KomponenNilai(nama: "Proyek", bobot: 25, mataKuliah: matkul6F)]

        semester6.mataKuliah = [matkul6A, matkul6B, matkul6C, matkul6D, matkul6E, matkul6F]

        let semester7 = Semester(nomor: 7, jurusan: jurusan)
        let matkul7A = MataKuliah(nama: "Tugas Akhir I", sks: 4, semester: semester7)
        matkul7A.komponen = [
            KomponenNilai(nama: "Nilai Akhir", bobot: 100, mataKuliah: matkul7A)]
            
        let matkul7B = MataKuliah(nama: "Kerja Praktik", sks: 5, semester: semester7)
        matkul7B.komponen = [
            KomponenNilai(nama: "UAS", bobot: 100, mataKuliah: matkul7B)]
        
        let matkul7C = MataKuliah(nama: "Kapita Selekta", sks: 2, semester: semester7)
        matkul7C.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 80, mataKuliah: matkul7C),
            KomponenNilai(nama: "Penulisan Artikel", bobot: 20, mataKuliah: matkul7C)]
        
        let matkul7D = MataKuliah(nama: "Sistem Temu Balik Informasi", sks: 3, semester: semester7)
        matkul7D.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul7D),
            KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul7D),
            KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul7D),
            KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul7D),
            KomponenNilai(nama: "UAS", bobot: 20, mataKuliah: matkul7D),
            KomponenNilai(nama: "Proyek", bobot: 20, mataKuliah: matkul7D)]
        
        
        let matkul7E = MataKuliah(nama: "Visualisasi Data", sks: 3, semester: semester7)
        matkul7E.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul7E),
            KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul7E),
            KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul7E),
            KomponenNilai(nama: "UAS", bobot: 20, mataKuliah: matkul7E),
            KomponenNilai(nama: "Kuis Mini", bobot: 15, mataKuliah: matkul7E),
            KomponenNilai(nama: "Proyek", bobot: 20, mataKuliah: matkul7E)]
        
        let matkul7F = MataKuliah(nama: "Pengolahan Data Besar", sks: 3, semester: semester7)
        matkul7F.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul7F),
            KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul7F),
            KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul7F),
            KomponenNilai(nama: "UAS", bobot: 20, mataKuliah: matkul7F),
            KomponenNilai(nama: "Proyek", bobot: 30, mataKuliah: matkul7F)]
        
        let matkul7G = MataKuliah(nama: "Sistem Rekomendasi", sks: 3, semester: semester7)
        matkul7G.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul7G),
            KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul7G),
            KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul7G),
            KomponenNilai(nama: "UAS", bobot: 20, mataKuliah: matkul7G),
            KomponenNilai(nama: "Proyek", bobot: 20, mataKuliah: matkul7G),
            KomponenNilai(nama: "Tugas/Partisipasi", bobot: 10, mataKuliah: matkul7G)]
        
    
        let matkul7H = MataKuliah(nama: "Audit Teknologi Informasi", sks: 3, semester: semester7)
        matkul7H.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul7H),
            KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: matkul7H),
            KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul7H),
            KomponenNilai(nama: "Proyek", bobot: 25, mataKuliah: matkul7H)]
        
        let matkul7I = MataKuliah(nama: "Web Cerdas", sks: 3, semester: semester7)
        matkul7I.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul7I),
            KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul7I),
            KomponenNilai(nama: "Proyek", bobot: 25, mataKuliah: matkul7I),
            KomponenNilai(nama: "UTS", bobot: 15, mataKuliah: matkul7I),
            KomponenNilai(nama: "UAS", bobot: 20, mataKuliah: matkul7I)]
            
        let matkul7J = MataKuliah(nama: "Riset Independen", sks: 20, semester: semester7)
        matkul7J.komponen = [
            KomponenNilai(nama: "Nilai Akhir", bobot: 100, mataKuliah: matkul7J)]
            
        let matkul7K = MataKuliah(nama: "Studi Independen", sks: 20, semester: semester7)
        matkul7K.komponen = [
            KomponenNilai(nama: "Nilai Akhir", bobot: 100, mataKuliah: matkul7K)]
        
        let matkul7L = MataKuliah(nama: "Magang Industri", sks: 20, semester: semester7)
        matkul7L.komponen = [
            KomponenNilai(nama: "Nilai Akhir", bobot: 100, mataKuliah: matkul7L)]
        
        let matkul7M = MataKuliah(nama: "Kewirausahaan", sks: 20, semester: semester7)
        matkul7M.komponen = [
            KomponenNilai(nama: "Nilai Akhir", bobot: 100, mataKuliah: matkul7M)]
        
        let matkul7N = MataKuliah(nama: "Riset Independen Paruh Waktu", sks: 14, semester: semester7)
        matkul7N.komponen = [
            KomponenNilai(nama: "Nilai Akhir", bobot: 100, mataKuliah: matkul7N)]
        
        let matkul7O = MataKuliah(nama: "Studi Independen Paruh Waktu", sks: 14, semester: semester7)
        matkul7O.komponen = [
            KomponenNilai(nama: "Nilai Akhir", bobot: 100, mataKuliah: matkul7O)]
        
        let matkul7P = MataKuliah(nama: "Magang Industri Paruh Waktu", sks: 14, semester: semester7)
        matkul7P.komponen = [
            KomponenNilai(nama: "Nilai Akhir", bobot: 100, mataKuliah: matkul7P)]

        semester7.mataKuliah = [matkul7A, matkul7B, matkul7C, matkul7D, matkul7E, matkul7F, matkul7G, matkul7H, matkul7I, matkul7J, matkul7K, matkul7L, matkul7M, matkul7N, matkul7O, matkul7P]

        let semester8 = Semester(nomor: 8, jurusan: jurusan)
        let matkul8A = MataKuliah(nama: "Tugas Akhir II", sks: 4, semester: semester8)
        matkul8A.komponen = [
            KomponenNilai(nama: "Nilai Akhir", bobot: 100, mataKuliah: matkul8A)]
        
        let matkul8B = MataKuliah(nama: "Sertifikasi Profesi", sks: 3, semester: semester8)
        matkul8B.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 100, mataKuliah: matkul8B)]
        
        let matkul8C = MataKuliah(nama: "Kewarganegaraan", sks: 2, semester: semester8)
        matkul8C.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul8C),
            KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul8C),
            KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul8C),
            KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul8C)]
        
        let matkul8D = MataKuliah(nama: "Pengenalan Pola", sks: 3, semester: semester8)
        matkul8D.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul8D),
            KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul8D),
            KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul8D),
            KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul8D),
            KomponenNilai(nama: "UAS", bobot: 20, mataKuliah: matkul8D),
            KomponenNilai(nama: "Proyek", bobot: 20, mataKuliah: matkul8D)]
        
        let matkul8E = MataKuliah(nama: "Perdagangan Elektronik", sks: 3, semester: semester8)
        matkul8E.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul8E),
            KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul8E),
            KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul8E),
            KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul8E),
            KomponenNilai(nama: "UAS", bobot: 20, mataKuliah: matkul8E),
            KomponenNilai(nama: "Proyek", bobot: 20, mataKuliah: matkul8E)]

        semester8.mataKuliah = [matkul8A, matkul8B, matkul8C, matkul8D, matkul8E]


        
        jurusan.semesters = [semester1, semester2, semester3, semester4, semester5, semester6, semester7, semester8]
        return jurusan
    }
}
