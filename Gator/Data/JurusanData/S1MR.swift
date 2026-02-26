import Foundation
import SwiftData

// S1 - Manajemen Rekayasa
enum S1MR_Data {
    static func create() -> Jurusan {
        let jurusan = Jurusan(nama: "S1 - Manajemen Rekayasa")
        
        // Semester 1
        let semester1 = Semester(nomor: 1, jurusan: jurusan)
        let matkul1A = MataKuliah(nama: "Matematika Dasar I", sks: 4, semester: semester1)
        matkul1A.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul1A), KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: matkul1A), KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul1A), KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul1A),  KomponenNilai(nama: "Tugas Proyek", bobot: 10, mataKuliah: matkul1A)]
        
        let matkul1B = MataKuliah(nama: "Fisika Dasar IB", sks: 3, semester: semester1)
        matkul1B.komponen = [KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul1B), KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul1B), KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul1B), KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul1B),KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul1B), KomponenNilai(nama: "RBL", bobot: 15, mataKuliah: matkul1B)]
        
        let matkul1C = MataKuliah(nama: "Bahasa Inggris I", sks: 2, semester: semester1)
        matkul1C.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul1C), KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul1C), KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul1C), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1C),KomponenNilai(nama: "Tambahan 1", bobot: 15, mataKuliah: matkul1C)]
        
        let matkul1D = MataKuliah(nama: "Pembentukan Karakter Del", sks: 2, semester: semester1)
        matkul1D.komponen = [KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: matkul1D), KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul1D), KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1D), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1D)]
        
        let matkul1E = MataKuliah(nama: "Pengantar Manajemen Rekayasa", sks: 2, semester: semester1)
        matkul1E.komponen = [KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1E), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1E), KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul1E), KomponenNilai(nama: "Kuis", bobot: 20, mataKuliah: matkul1E)]
        
        let matkul1F = MataKuliah(nama: "Berpikir Sistem", sks: 3, semester: semester1)
        matkul1F.komponen = [KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1F), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1F), KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul1F), KomponenNilai(nama: "Kuis", bobot: 20, mataKuliah: matkul1F)]
        
        let matkul1G = MataKuliah(nama: "Penyelesaian Masalah di Dunia Digital", sks: 2, semester: semester1)
        matkul1G.komponen = [KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul1G), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul1G), KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul1G), KomponenNilai(nama: "Kuis", bobot: 20, mataKuliah: matkul1G)]
        
        semester1.mataKuliah = [matkul1A, matkul1B, matkul1C, matkul1D, matkul1E, matkul1F, matkul1G]
        
        // Semester 2
        let semester2 = Semester(nomor: 2, jurusan: jurusan)
        let matkul2A = MataKuliah(nama: "Matematika Dasar II", sks: 4, semester: semester2)
        matkul2A.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul2A), KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: matkul2A), KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul2A), KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul2A), KomponenNilai(nama: "Proyek", bobot: 10, mataKuliah: matkul2A)]
        
        let matkul2B = MataKuliah(nama: "Fisika Dasar IIB", sks: 3, semester: semester2)
        matkul2B.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul2B), KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul2B), KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul2B), KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul2B), KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul2B), KomponenNilai(nama: "RBL", bobot: 10, mataKuliah: matkul2B)]
        
        let matkul2C = MataKuliah(nama: "Kimia Dasar B", sks: 3, semester: semester2)
        matkul2C.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul2C), KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul2C), KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul2C), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul2C)]
        
        let matkul2D = MataKuliah(nama: "Pengantar Rekayasa dan Desain", sks: 2, semester: semester2)
        matkul2D.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul2D), KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul2D), KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul2D), KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul2D)]
        
        let matkul2E = MataKuliah(nama: "Visualisasi dan Gambar Teknik", sks: 3, semester: semester2)
        matkul2E.komponen = [KomponenNilai(nama: "30", bobot: 30, mataKuliah: matkul2E), KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul2E), KomponenNilai(nama: "UAS", bobot: 40, mataKuliah: matkul2E)]
        
        let matkul2F = MataKuliah(nama: "Bahasa Inggris II", sks: 2, semester: semester2)
        matkul2F.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul2F), KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul2F), KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul2F), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul2F), KomponenNilai(nama: "Tambahan 1", bobot: 15, mataKuliah: matkul2F)]
        
        let matkul2G = MataKuliah(nama: "Bahasa Indonesia", sks: 2, semester: semester2)
        matkul2G.komponen = [KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: matkul2G), KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul2G), KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul2G), KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul2G)]
        
        
        semester2.mataKuliah = [matkul2A, matkul2B, matkul2C, matkul2D, matkul2E, matkul2F, matkul2G]
        
        // Semester 3
        let semester3 = Semester(nomor: 3, jurusan: jurusan)
        let matkul3A = MataKuliah(nama: "Probabilitas dan Statistika", sks: 3, semester: semester3)
        matkul3A.komponen = [KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul3A), KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul3A), KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul3A), KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul3A), KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul3A), KomponenNilai(nama: "Tugas Besar", bobot: 10, mataKuliah: matkul3A)]
        
        let matkul3B = MataKuliah(nama: "Agama", sks: 2, semester: semester3)
        matkul3B.komponen = [KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: matkul3B), KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul3B), KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3B), KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul3B)]
        
        let matkul3C = MataKuliah(nama: "Termodinamika Teknik", sks: 3, semester: semester3)
        matkul3C.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul3C), KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: matkul3C), KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul3C), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul3C)]
        
        let matkul3D = MataKuliah(nama: "Ekonomika Teknik", sks: 3, semester: semester3)
        matkul3D.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul3D), KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul3D), KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul3D), KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul3D), KomponenNilai(nama: "Proyek Akhir", bobot: 25, mataKuliah: matkul3D)]
        
        let matkul3E = MataKuliah(nama: "Pengantar Pemasaran", sks: 2, semester: semester3)
        matkul3E.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul3E), KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul3E), KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul3E), KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul3E), KomponenNilai(nama: "Proyek Akhir", bobot: 25, mataKuliah: matkul3E)]
        
        let matkul3F = MataKuliah(nama: "Perencanaan dan Pengendalian Produksi", sks: 3, semester: semester3)
        matkul3F.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul3F), KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul3F), KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul3F), KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul3F)]
        
        let matkul3G = MataKuliah(nama: "Praktikum Sistem Produksi 1", sks: 1, semester: semester3)
        matkul3G.komponen = [KomponenNilai(nama: "Modul 1-2", bobot: 22, mataKuliah: matkul3G), KomponenNilai(nama: "Modul 3-4", bobot: 22, mataKuliah: matkul3G), KomponenNilai(nama: "Modul 5-6", bobot: 22, mataKuliah: matkul3G), KomponenNilai(nama: "Modul 7-9", bobot: 34, mataKuliah: matkul3G)]
        
        let matkul3H = MataKuliah(nama: "Pengantar Pemrograman", sks: 2, semester: semester3)
        matkul3H.komponen = [KomponenNilai(nama: "Praktikum", bobot: 16, mataKuliah: matkul3H), KomponenNilai(nama: "Tugas", bobot: 12, mataKuliah: matkul3H), KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul3H), KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul3H), KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul3H), KomponenNilai(nama: "Keaktifan", bobot: 12, mataKuliah: matkul3H)]
        
        semester3.mataKuliah = [matkul3A, matkul3B, matkul3C, matkul3D, matkul3E, matkul3F, matkul3G, matkul3H]
        
        
        // Semester 4
        let semester4 = Semester(nomor: 4, jurusan: jurusan)
        let matkul4A = MataKuliah(nama: "Bahasa Inggris III", sks: 2, semester: semester4)
        matkul4A.komponen = [KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul4A), KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul4A), KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: matkul4A), KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul4A), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4A)]
        
        let matkul4B = MataKuliah(nama: "Matematika Lanjut", sks: 3, semester: semester4)
        matkul4B.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul4B), KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: matkul4B), KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4B), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4B)]
        
        let matkul4C = MataKuliah(nama: "Statistika Inferensi", sks: 3, semester: semester4)
        matkul4C.komponen = [KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: matkul4C), KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul4C), KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul4C), KomponenNilai(nama: "UTS", bobot: 32.5, mataKuliah: matkul4C), KomponenNilai(nama: "UAS", bobot: 32.5, mataKuliah: matkul4C)]
        
        let matkul4D = MataKuliah(nama: "Penelitian Operasional 1", sks: 3, semester: semester4)
        matkul4D.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul4D), KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul4D), KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4D), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4D)]
        
        let matkul4E = MataKuliah(nama: "Praktikum Sistem Produksi 2", sks: 1, semester: semester4)
        matkul4E.komponen = [KomponenNilai(nama: "Modul 1", bobot: 20, mataKuliah: matkul4E), KomponenNilai(nama: "Modul 2", bobot: 20, mataKuliah: matkul4E), KomponenNilai(nama: "Modul 3", bobot: 20, mataKuliah: matkul4E), KomponenNilai(nama: "Modul 4", bobot: 20, mataKuliah: matkul4E), KomponenNilai(nama: "Modul 5", bobot: 20, mataKuliah: matkul4E)]
        
        let matkul4F = MataKuliah(nama: "Ekonomi Manajerial", sks: 3, semester: semester4)
        matkul4F.komponen = [KomponenNilai(nama: "Tugas", bobot: 35, mataKuliah: matkul4F), KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul4F), KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul4F), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4F)]
        
        let matkul4G = MataKuliah(nama: "Dasar-Dasar Rekayasa Faktor Manusia", sks: 3, semester: semester4)
        matkul4G.komponen = [KomponenNilai(nama: "Tugas", bobot: 40, mataKuliah: matkul4G), KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul4G), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul4G)]
        
        semester4.mataKuliah = [matkul4A, matkul4B, matkul4C, matkul4D, matkul4E, matkul4F, matkul4G]
        
        // Semester 5
        let semester5 = Semester(nomor: 5, jurusan: jurusan)
        let matkul5A = MataKuliah(nama: "Perancangan Organisasi dan SDM", sks: 3, semester: semester5)
        matkul5A.komponen = [KomponenNilai(nama: "Tugas", bobot: 40, mataKuliah: matkul5A), KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul5A), KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul5A), KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul5A)]
        
        let matkul5B = MataKuliah(nama: "Penelitian Operasional 2", sks: 3, semester: semester5)
        matkul5B.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul5B), KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul5B), KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul5B), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul5B)]
        
        let matkul5C = MataKuliah(nama: "Perancangan Model Bisnis", sks: 3, semester: semester5)
        matkul5C.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul5C), KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul5C), KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul5C), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul5C)]
        
        let matkul5D = MataKuliah(nama: "Perancangan dan Pengembangan Produk", sks: 3, semester: semester5)
        matkul5D.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul5D), KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul5D), KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul5D), KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul5D)]
        
        let matkul5E = MataKuliah(nama: "Rekayasa Logistik", sks: 3, semester: semester5)
        matkul5E.komponen = [KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul5E), KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul5E), KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul5E), KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul5E), KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul5E)]
        
        let matkul5F = MataKuliah(nama: "Riset Pemasaran", sks: 3, semester: semester5)
        matkul5F.komponen = [KomponenNilai(nama: "Tugas", bobot: 40, mataKuliah: matkul5F), KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul5F), KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul5F), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul5F)]
        
        let matkul5G = MataKuliah(nama: "Perancangan Keselamatan, Kesehatan, dan Lingkungan Kerja", sks: 2, semester: semester5)
        matkul5G.komponen = [KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: matkul5G), KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: matkul5G), KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul5G), KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul5G), KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul5G)]
        
        semester5.mataKuliah = [matkul5A, matkul5B, matkul5C, matkul5D, matkul5E, matkul5F, matkul5G]
        
        jurusan.semesters = [semester1, semester2, semester3, semester4, semester5]
        
        
        // Semester 6
                let semester6 = Semester(nomor: 6, jurusan: jurusan)
                let matkul6A = MataKuliah(nama: "Keteknowiraan", sks: 3, semester: semester6)
        matkul6A.komponen = [KomponenNilai(nama: "Tugas", bobot: 27, mataKuliah: matkul6A), KomponenNilai(nama: "UTS", bobot: 35.5, mataKuliah: matkul6A), KomponenNilai(nama: "UAS", bobot: 37.7, mataKuliah: matkul6A)]
        
                let matkul6B = MataKuliah(nama: "Manajemen Proyek Rekayasa", sks: 3, semester: semester6)
                matkul6B.komponen = [KomponenNilai(nama: "Praktikum", bobot: 25, mataKuliah: matkul6B), KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul6B), KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul6B), KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul6B), KomponenNilai(nama: "UAS", bobot: 20, mataKuliah: matkul6B)]
        
                let matkul6C = MataKuliah(nama: "Pengenalan Sistem Informasi dan Basis Data", sks: 3, semester: semester6)
        matkul6C.komponen = [KomponenNilai(nama: "Tugas", bobot: 22.5, mataKuliah: matkul6C), KomponenNilai(nama: "Quis", bobot: 19.5, mataKuliah: matkul6C), KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: matkul6C), KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: matkul6C), KomponenNilai(nama: "Partisipasi", bobot: 8, mataKuliah: matkul6C)]
        
                let matkul6D = MataKuliah(nama: "Rekayasa Mutu", sks: 3, semester: semester6)
                matkul6D.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul6D), KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul6D), KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul6D), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul6D)]
        
                let matkul6E = MataKuliah(nama: "Metodologi Penelitian", sks: 3, semester: semester6)
                matkul6E.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul6E), KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul6E), KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul6E), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul6E)]
        
                let matkul6F = MataKuliah(nama: "Analisis dan Visualisasi Data", sks: 3, semester: semester6)
                matkul6F.komponen = [KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: matkul6F), KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul6F), KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: matkul6F), KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul6F), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul6F)]

                semester6.mataKuliah = [matkul6A, matkul6B, matkul6C, matkul6D, matkul6E, matkul6F]
        
        
        // Semester 7
        let semester7 = Semester(nomor: 7, jurusan: jurusan)
        let matkul7A = MataKuliah(nama: "Desain Proyek Rekayasa", sks: 5, semester: semester7)
        matkul7A.komponen = [KomponenNilai(nama: "Laporan Rutin", bobot: 25, mataKuliah: matkul7A), KomponenNilai(nama: "Seminar Kemajuan", bobot: 20, mataKuliah: matkul7A), KomponenNilai(nama: "Pameran Protorype", bobot: 25, mataKuliah: matkul7A), KomponenNilai(nama: "Laporan Akhir", bobot: 20, mataKuliah: matkul7A), KomponenNilai(nama: "Seminar Akhir", bobot: 10, mataKuliah: matkul7A)]
        
        let matkul7B = MataKuliah(nama: "Kerja Praktek", sks: 2, semester: semester7)
        matkul7B.komponen = [KomponenNilai(nama: "Perusahaan", bobot: 20, mataKuliah: matkul7B), KomponenNilai(nama: "Laporan", bobot: 50, mataKuliah: matkul7B), KomponenNilai(nama: "Seminar", bobot: 30, mataKuliah: matkul7B)]
        
        let matkul7C = MataKuliah(nama: "Simulasi Sistem", sks: 3, semester: semester7)
        matkul7C.komponen = [KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: matkul7C), KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul7C), KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: matkul7C), KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: matkul7C)]
        
        let matkul7D = MataKuliah(nama: "Perancangan Six Sigma", sks: 3, semester: semester7)
        matkul7D.komponen = [KomponenNilai(nama: "Praktikum", bobot: 50, mataKuliah: matkul7D), KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: matkul7D), KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul7D)]
        
        let matkul7E = MataKuliah(nama: "Perancangan Alat Bantu Produksi", sks: 3, semester: semester7)
        matkul7E.komponen = [KomponenNilai(nama: "Total", bobot: 100, mataKuliah: matkul7E)]
        
        let matkul7F = MataKuliah(nama: "Desain Produk Ergonomi", sks: 3, semester: semester7)
        matkul7F.komponen = [KomponenNilai(nama: "Total", bobot: 100, mataKuliah: matkul7F)]
        
        let matkul7G = MataKuliah(nama: "Manajemen Operasional Handal", sks: 3, semester: semester7)
        matkul7G.komponen = [KomponenNilai(nama: "Total", bobot: 100, mataKuliah: matkul7G)]
        
        let matkul7H = MataKuliah(nama: "Inovasi Model Bisnis", sks: 3, semester: semester7)
        matkul7H.komponen = [KomponenNilai(nama: "Total", bobot: 100, mataKuliah: matkul7H)]
        
        let matkul7I = MataKuliah(nama: "Proyek Penelitian Pasar", sks: 3, semester: semester7)
        matkul7I.komponen = [KomponenNilai(nama: "Total", bobot: 100, mataKuliah: matkul7I)]
        
        let matkul7J = MataKuliah(nama: "Enterprise Resource Planning", sks: 3, semester: semester7)
        matkul7J.komponen = [KomponenNilai(nama: "Total", bobot: 100, mataKuliah: matkul7J)]
        
        let matkul7K = MataKuliah(nama: "Perilaku Konsumen", sks: 3, semester: semester7)
        matkul7K.komponen = [KomponenNilai(nama: "Total", bobot: 100, mataKuliah: matkul7K)]
        
        let matkul7L = MataKuliah(nama: "Sains Data dan Pembelajaran Mesin (+P)", sks: 2, semester: semester7)
        matkul7L.komponen = [KomponenNilai(nama: "Praktikum", bobot: 12, mataKuliah: matkul7L), KomponenNilai(nama: "Tugas", bobot: 28, mataKuliah: matkul7L), KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul7L), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul7L)]
        
        let matkul7M = MataKuliah(nama: "Pancasila", sks: 2, semester: semester7)
        matkul7M.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul7M), KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul7M), KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul7M), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul7M)]
        
        
        semester7.mataKuliah = [matkul7A, matkul7B, matkul7C, matkul7D, matkul7E, matkul7F, matkul7G, matkul7H, matkul7I, matkul7J, matkul7K, matkul7L, matkul7M]
        
        // Semester 8
        let semester8 = Semester(nomor: 8, jurusan: jurusan)
        let matkul8A = MataKuliah(nama: "Tugas Akhir", sks: 5, semester: semester8)
        matkul8A.komponen = [KomponenNilai(nama: "Total", bobot: 100, mataKuliah: matkul8A)]
        
        let matkul8B = MataKuliah(nama: "Etika Profesional", sks: 2, semester: semester8)
        matkul8B.komponen = [KomponenNilai(nama: "Tugas", bobot: 40, mataKuliah: matkul8B), KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: matkul8B), KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: matkul8B), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul8B)]
        
        let matkul8C = MataKuliah(nama: "Manajemen Strategi dan Perubahan", sks: 3, semester: semester8)
        matkul8C.komponen = [KomponenNilai(nama: "Total", bobot: 100, mataKuliah: matkul8C)]

        
        let matkul8D = MataKuliah(nama: "Sistem Pendukung Pengambilan Keputusan", sks: 3, semester: semester8)
        matkul8D.komponen = [KomponenNilai(nama: "Total", bobot: 100, mataKuliah: matkul8D)]

        
        let matkul8E = MataKuliah(nama: "Sistem dan Teknik Keenergian", sks: 3, semester: semester8)
        matkul8E.komponen = [KomponenNilai(nama: "Total", bobot: 100, mataKuliah: matkul8E)]
        
        let matkul8F = MataKuliah(nama: "Rekayasa Energi Baru dan Terbarukan", sks: 3, semester: semester8)
        matkul8F.komponen = [KomponenNilai(nama: "Total", bobot: 100, mataKuliah: matkul8F)]
        
        let matkul8G = MataKuliah(nama: "Ekologi Industri", sks: 3, semester: semester8)
        matkul8G.komponen = [KomponenNilai(nama: "Total", bobot: 100, mataKuliah: matkul8G)]

        let matkul8H = MataKuliah(nama: "Kecerdasan Buatan", sks: 3, semester: semester8)
        matkul8H.komponen = [KomponenNilai(nama: "Total", bobot: 100, mataKuliah: matkul8H)]

        let matkul8I = MataKuliah(nama: "Kewarganegaraan", sks: 2, semester: semester8)
        matkul8I.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: matkul8I), KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: matkul8I), KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: matkul8I), KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: matkul8I)]
        
        let matkul8J = MataKuliah(nama: "Magang 3", sks: 3, semester: semester8)
        matkul8J.komponen = [KomponenNilai(nama: "Laporan Akhir", bobot: 60, mataKuliah: matkul8J)]
        
        semester8.mataKuliah = [matkul8A, matkul8B, matkul8C, matkul8D, matkul8E, matkul8F, matkul8G, matkul8H, matkul8I, matkul8J]
        
        return jurusan
    }
    
}

