import Foundation
import SwiftData

enum DummyDataProvider {
    static func generate(context: ModelContext) {
        // Cek agar data tidak dibuat berulang kali
        let descriptor = FetchDescriptor<Jurusan>()
        guard (try? context.fetch(descriptor))?.isEmpty == true else { return }
        
        // Pola komponen penilaian umum untuk digunakan kembali
        let komponenUmum = [
            KomponenNilai(nama: "Tugas", bobot: 20),
            KomponenNilai(nama: "Kuis", bobot: 20),
            KomponenNilai(nama: "UTS", bobot: 30),
            KomponenNilai(nama: "UAS", bobot: 30)
        ]
        
        let komponenPraktikum = [
            KomponenNilai(nama: "Praktikum", bobot: 40),
            KomponenNilai(nama: "UTS", bobot: 30),
            KomponenNilai(nama: "UAS", bobot: 30)
        ]

        // =================================================================
        // DIII (Diploma 3)
        // =================================================================
        
        // Jurusan: Teknologi Informasi
        let d3ti = Jurusan(nama: "DIII - Teknologi Informasi")
        context.insert(d3ti)
        let semester1D3TI = Semester(nomor: 1)
        semester1D3TI.jurusan = d3ti
        semester1D3TI.mataKuliah = [
            MataKuliah(nama: "Logika Pemrograman", sks: 3, komponen: komponenUmum),
            MataKuliah(nama: "Pengantar TI", sks: 2, komponen: komponenUmum)
        ]

        // Jurusan: Teknologi Komputer
        let d3tk = Jurusan(nama: "DIII - Teknologi Komputer")
        context.insert(d3tk)
        let semester1D3TK = Semester(nomor: 1)
        semester1D3TK.jurusan = d3tk
        semester1D3TK.mataKuliah = [
            MataKuliah(nama: "Dasar Sistem Komputer", sks: 3, komponen: komponenPraktikum),
            MataKuliah(nama: "Elektronika Digital", sks: 3, komponen: komponenPraktikum)
        ]
        
        // =================================================================
        // D IV (Sarjana Terapan)
        // =================================================================
        
        // Jurusan: Sarjana Terapan Teknologi Rekayasa Perangkat Lunak
        let d4trpl = Jurusan(nama: "D IV - TRPL")
        context.insert(d4trpl)
        let semester1D4TRPL = Semester(nomor: 1)
        semester1D4TRPL.jurusan = d4trpl
        semester1D4TRPL.mataKuliah = [
            MataKuliah(nama: "Analisis & Desain Perangkat Lunak", sks: 3, komponen: komponenUmum),
            MataKuliah(nama: "Arsitektur Perangkat Lunak", sks: 3, komponen: komponenUmum)
        ]
        
        // =================================================================
        // S1 (Sarjana)
        // =================================================================
        
        // Jurusan: Informatika
        let s1if = Jurusan(nama: "S1 - Informatika")
        context.insert(s1if)
        let semester1S1IF = Semester(nomor: 1)
        semester1S1IF.jurusan = s1if
        semester1S1IF.mataKuliah = [
            MataKuliah(nama: "Dasar Pemrograman", sks: 3, komponen: komponenUmum),
            MataKuliah(nama: "Matematika Diskrit", sks: 3, komponen: komponenUmum)
        ]
        let semester2S1IF = Semester(nomor: 2)
        semester2S1IF.jurusan = s1if
        semester2S1IF.mataKuliah = [
            MataKuliah(nama: "Struktur Data & Algoritma", sks: 4, komponen: komponenPraktikum)
        ]

        // Jurusan: Manajemen Rekayasa
        let s1mr = Jurusan(nama: "S1 - Manajemen Rekayasa")
        context.insert(s1mr)
        let semester1S1MR = Semester(nomor: 1)
        semester1S1MR.jurusan = s1mr
        semester1S1MR.mataKuliah = [
            MataKuliah(nama: "Manajemen Proyek", sks: 3, komponen: komponenUmum),
            MataKuliah(nama: "Ekonomi Teknik", sks: 3, komponen: komponenUmum)
        ]

        // Jurusan: Sistem Informasi
        let s1si = Jurusan(nama: "S1 - Sistem Informasi")
        context.insert(s1si)
        let semester1S1SI = Semester(nomor: 1)
        semester1S1SI.jurusan = s1si
        semester1S1SI.mataKuliah = [
            MataKuliah(nama: "Pengantar Sistem Informasi", sks: 3, komponen: komponenUmum),
            MataKuliah(nama: "Proses Bisnis", sks: 3, komponen: komponenUmum)
        ]

        // Jurusan: Teknik Bioproses
        let s1tb = Jurusan(nama: "S1 - Teknik Bioproses")
        context.insert(s1tb)
        let semester1S1TB = Semester(nomor: 1)
        semester1S1TB.jurusan = s1tb
        semester1S1TB.mataKuliah = [
            MataKuliah(nama: "Kimia Dasar", sks: 4, komponen: komponenPraktikum),
            MataKuliah(nama: "Biologi Sel", sks: 3, komponen: komponenUmum)
        ]

        // Jurusan: Teknik Elektro
        let s1te = Jurusan(nama: "S1 - Teknik Elektro")
        context.insert(s1te)
        let semester1S1TE = Semester(nomor: 1)
        semester1S1TE.jurusan = s1te
        semester1S1TE.mataKuliah = [
            MataKuliah(nama: "Rangkaian Listrik I", sks: 3, komponen: komponenPraktikum),
            MataKuliah(nama: "Fisika Dasar", sks: 4, komponen: komponenUmum)
        ]

        // Jurusan: Teknik Metalurgi
        let s1tm = Jurusan(nama: "S1 - Teknik Metalurgi")
        context.insert(s1tm)
        let semester1S1TM = Semester(nomor: 1)
        semester1S1TM.jurusan = s1tm
        semester1S1TM.mataKuliah = [
            MataKuliah(nama: "Pengantar Metalurgi", sks: 3, komponen: komponenUmum),
            MataKuliah(nama: "Termodinamika", sks: 3, komponen: komponenUmum)
        ]
    }
}
