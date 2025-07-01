import Foundation
import SwiftData

enum DummyDataProvider {
    static func generate(context: ModelContext) {
        let descriptor = FetchDescriptor<Jurusan>()
        guard (try? context.fetch(descriptor))?.isEmpty == true else { return }
        
        // --- JURUSAN INFORMATIKA ---
        let informatika = Jurusan(nama: "Informatika")
        context.insert(informatika)
        
        // Semester 1 Informatika
        let semester1IF = Semester(nomor: 1)
        semester1IF.jurusan = informatika
        let komponenUmum = [KomponenNilai(nama: "Tugas", bobot: 20), KomponenNilai(nama: "Kuis", bobot: 20), KomponenNilai(nama: "UTS", bobot: 30), KomponenNilai(nama: "UAS", bobot: 30)]
        semester1IF.mataKuliah = [
            MataKuliah(nama: "Dasar Pemrograman", sks: 3, komponen: komponenUmum),
            MataKuliah(nama: "Matematika Dasar I", sks: 4, komponen: komponenUmum)
        ]
        
        // Semester 2 Informatika
        let semester2IF = Semester(nomor: 2)
        semester2IF.jurusan = informatika
        let komponenPraktikum = [KomponenNilai(nama: "Praktikum", bobot: 40), KomponenNilai(nama: "UTS", bobot: 30), KomponenNilai(nama: "UAS", bobot: 30)]
        semester2IF.mataKuliah = [
            MataKuliah(nama: "Struktur Data", sks: 3, komponen: komponenPraktikum),
            MataKuliah(nama: "Basis Data", sks: 3, komponen: komponenPraktikum)
        ]
        
        // --- JURUSAN SISTEM INFORMASI ---
        let sisfo = Jurusan(nama: "Sistem Informasi")
        context.insert(sisfo)
        
        // Semester 1 Sistem Informasi
        let semester1SI = Semester(nomor: 1)
        semester1SI.jurusan = sisfo
        let komponenSI = [KomponenNilai(nama: "Presentasi", bobot: 25), KomponenNilai(nama: "Studi Kasus", bobot: 35), KomponenNilai(nama: "UAS", bobot: 40)]
        semester1SI.mataKuliah = [  
         MataKuliah(nama: "Pengantar SI", sks: 3, komponen: komponenSI),
         MataKuliah(nama: "Manajemen Bisnis", sks: 3, komponen: komponenSI),
         MataKuliah(nama: "Daspro", sks: 3, komponen: komponenSI)
        ]
        
        // ... kode untuk Jurusan Sistem Informasi yang sudah ada ...

        // --- JURUSAN TEKNIK ELEKTRO (CONTOH DATA BARU) ---
        let elektro = Jurusan(nama: "Teknik Elektro")
        context.insert(elektro) // Insert Jurusan ke context

        // Semester 1 Teknik Elektro
        let semester1TE = Semester(nomor: 1)
        semester1TE.jurusan = elektro // Hubungkan ke Jurusan Elektro

        // Definisikan komponen untuk mata kuliah Rangkaian Listrik I
        let komponenRL = [
            KomponenNilai(nama: "Kuis", bobot: 40),
            KomponenNilai(nama: "UTS", bobot: 30),
            KomponenNilai(nama: "UAS", bobot: 30)
        ]

        // Definisikan komponen untuk mata kuliah Fisika Dasar
        let komponenFisika = [
            KomponenNilai(nama: "Tugas", bobot: 20),
            KomponenNilai(nama: "Praktikum", bobot: 30),
            KomponenNilai(nama: "UTS", bobot: 20),
            KomponenNilai(nama: "UAS", bobot: 30)
        ]

        // Tambahkan mata kuliah ke Semester 1 Teknik Elektro
        semester1TE.mataKuliah = [
            MataKuliah(nama: "Rangkaian Listrik I", sks: 3, komponen: komponenRL),
            MataKuliah(nama: "Fisika Dasar", sks: 4, komponen: komponenFisika)
        ]

        // Anda bisa menambahkan semester lain jika perlu, contoh Semester 2:
        // let semester2TE = Semester(nomor: 2)
        // semester2TE.jurusan = elektro
        // semester2TE.mataKuliah = [ ... mata kuliah semester 2 di sini ... ]
    }
}
