//
//  S1IF.swift
//  Gator
//
//  Created by Foundation-009 on 07/07/25.
//

import Foundation
import SwiftData

// S1 - Informatika
enum S1IF_Data {
    static func create() -> Jurusan {
        let jurusan = Jurusan(nama: "S1 - Informatika")
       
        // Semester 1
        let semester1 = Semester(nomor: 1, jurusan: jurusan)

        let daspro = MataKuliah(nama: "Matematika Dasar I", sks: 3, semester: semester1)
        daspro.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: daspro),
            KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: daspro),
            KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: daspro),
            KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: daspro),
            KomponenNilai(nama: "Tugas Proyek", bobot: 10, mataKuliah: daspro)
        ]

        let inggris = MataKuliah(nama: "Bahasa Inggris", sks: 3, semester: semester1)
        inggris.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 23, mataKuliah: inggris),
            KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: inggris),
            KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: inggris),
            KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: inggris),
            KomponenNilai(nama: "Tugas Proyek", bobot: 10, mataKuliah: inggris)
        ]

        let indo = MataKuliah(nama: "Bahasa Indonesia", sks: 3, semester: semester1)
        indo.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: indo),
            KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: indo),
            KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: indo),
            KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: indo)
        ]
        
        let del = MataKuliah(nama: "Pembentukan Karakter Del", sks: 3, semester: semester1)
        del.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 30, mataKuliah: del),
            KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: del),
            KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: del),
            KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: del)
        ]
        
        let kit = MataKuliah(nama: "Matematika Diskrikt", sks: 3, semester: semester1)
        kit.komponen = [
            KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: kit),
            KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: kit),
            KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: kit),
            KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: kit),
            KomponenNilai(nama: "Keaktifan", bobot: 5, mataKuliah: kit),
            KomponenNilai(nama: "Proyek", bobot: 10, mataKuliah: kit),
        ]
        
        let pem = MataKuliah(nama: "Pemograman Fungsional (+P)", sks: 3, semester: semester1)
        pem.komponen = [
            KomponenNilai(nama: "Praktikum", bobot: 16, mataKuliah: pem),
            KomponenNilai(nama: "Tugas", bobot: 12, mataKuliah: pem),
            KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: pem),
            KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: pem),
            KomponenNilai(nama: "Keaktifan", bobot: 12, mataKuliah: pem),
            KomponenNilai(nama: "Proyek", bobot: 25, mataKuliah: pem),
        ]
        
        let tal = MataKuliah(nama: "Penyelesaian Masalah di Dunia Digital", sks: 3, semester: semester1)
        tal.komponen = [
            KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: tal),
            KomponenNilai(nama: "Proyek", bobot: 80, mataKuliah: tal),
           
        ]

        semester1.mataKuliah = [daspro, inggris, indo, del, kit, pem, tal]
        
        
        // Semester 2
        let semester2 = Semester(nomor: 2, jurusan: jurusan)
        let strukdat = MataKuliah(nama: "Pengantar Rekayasa dan Desain", sks:3 , semester: semester2)
        strukdat.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: strukdat),
                             KomponenNilai(nama: "Praktikum", bobot: 25, mataKuliah: strukdat),
                             KomponenNilai(nama: "UTS", bobot: 35, mataKuliah: strukdat),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: strukdat),
                             
        ]
        
        let sain = MataKuliah(nama: "Matematika Dasar II", sks:3 , semester: semester2)
        sain.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: sain),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: sain),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: sain),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: sain),
                             KomponenNilai(nama: "Proyek", bobot: 10, mataKuliah: sain)
        ]
        
        
        let sain1 = MataKuliah(nama: "Pemodelan dan Simulasi (+P)", sks:3 , semester: semester2)
        sain1.komponen = [KomponenNilai(nama: "Tugas", bobot: 25, mataKuliah: sain1),
                             KomponenNilai(nama: "Quis", bobot: 5, mataKuliah: sain1),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: sain1),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: sain1),
                             KomponenNilai(nama: "Praktikum", bobot: 25, mataKuliah: sain1)
        ]
        
        let sain2 = MataKuliah(nama: "Rekayasa Perangkat Lunak", sks:3 , semester: semester2)
        sain2.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: sain2),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: sain2),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: sain2),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: sain2),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: sain2)
        ]
        
        let sain3 = MataKuliah(nama: "Pemograman Prosedural (+P)", sks:3 , semester: semester2)
        sain3.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: sain3),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: sain3),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: sain3),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: sain3),
                             KomponenNilai(nama: "Keaktifan", bobot: 10, mataKuliah: sain3)
        ]
        
        let sain4 = MataKuliah(nama: "Bahasa Inggris II", sks:3 , semester: semester2)
        sain4.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: sain4),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: sain4),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: sain4),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: sain4),
                             KomponenNilai(nama: "Tambahan 1", bobot: 15, mataKuliah: sain4)
        ]
        
        let sain5 = MataKuliah(nama: "Pancasila", sks:3 , semester: semester2)
        sain5.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: sain5),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: sain5),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: sain5),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: sain5)
        ]
        
        
        semester2.mataKuliah = [strukdat, sain, sain1, sain2, sain3, sain4, sain5]

        
        
        
        
        // Semester 3-8 (kosong, tapi tetap dibuat)
        let semester3 = Semester(nomor: 3, jurusan: jurusan)
        let wawa = MataKuliah(nama: "Agama", sks:3 , semester: semester3)
        wawa.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: wawa),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: wawa),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: wawa),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: wawa),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: wawa),
                             
        ]
        
        let wawa1 = MataKuliah(nama: "Teori Bahasa Formal dan Automata", sks:3 , semester: semester3)
        wawa1.komponen = [KomponenNilai(nama: "Tugas", bobot: 16, mataKuliah: wawa1),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: wawa1),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wawa1),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: wawa1),
                             KomponenNilai(nama: "Keaktifan", bobot: 14, mataKuliah: wawa1)
        ]
        
        
        let wawa2 = MataKuliah(nama: "Jaringan Komputer (+P)", sks:3 , semester: semester3)
        wawa2.komponen = [KomponenNilai(nama: "Tugas Pendahuluan", bobot: 5, mataKuliah: wawa2),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: wawa2),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wawa2),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: wawa2),
                             KomponenNilai(nama: "Laporan Awal & Akhir", bobot: 10, mataKuliah: wawa2)
        ]
        
        let wawa3 = MataKuliah(nama: "Pemrograman Berorientasi Objek (+P)", sks:3 , semester: semester3)
        wawa3.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: wawa3),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: wawa3),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wawa3),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: wawa3),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: wawa3)
        ]
        
        let wawa4 = MataKuliah(nama: "Arsitektur dan Organisasi Komputer (+P)", sks:3 , semester: semester3)
        wawa4.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: wawa4),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: wawa4),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wawa4),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: wawa4),
                             KomponenNilai(nama: "Keaktifan", bobot: 10, mataKuliah: wawa4)
        ]
        
        let wawa5 = MataKuliah(nama: "Basis Data (+P)", sks:3 , semester: semester3)
        wawa5.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: wawa5),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: wawa5),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: wawa5),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: wawa5),
                             KomponenNilai(nama: "Tambahan 1", bobot: 15, mataKuliah: wawa5)
        ]
        
        semester3.mataKuliah = [wawa, wawa1, wawa2,wawa3,wawa4,wawa5]
        
        
        
        let semester4 = Semester(nomor: 4, jurusan: jurusan)
        let wewe = MataKuliah(nama: "Probabilitas dan Statistika", sks:3 , semester: semester4)
        wewe.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: wewe),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: wewe),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: wewe),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: wewe),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: wewe),
                             
        ]
        
        let wewe1 = MataKuliah(nama: "Aljabar Linier", sks:3 , semester: semester4)
        wewe1.komponen = [KomponenNilai(nama: "Tugas", bobot: 16, mataKuliah: wewe1),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: wewe1),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wewe1),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: wewe1),
                             KomponenNilai(nama: "Keaktifan", bobot: 14, mataKuliah: wewe1)
        ]
        
        
        let wewe2 = MataKuliah(nama: "Sistem Operasi (+P)", sks:3 , semester: semester4)
        wewe2.komponen = [KomponenNilai(nama: "Praktikum (Tugas)", bobot: 15, mataKuliah: wewe2),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: wewe2),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: wewe2),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: wewe2),
                             KomponenNilai(nama: "Keaktifan", bobot: 10, mataKuliah: wewe2)
        ]
        
        let wewe3 = MataKuliah(nama: "Algoritma dan Struktur Data (+P)", sks:3 , semester: semester4)
        wewe3.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: wewe3),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: wewe3),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: wewe3),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: wewe3),
                             KomponenNilai(nama: "Praktikum", bobot: 15, mataKuliah: wewe3)
        ]
        
        let wewe4 = MataKuliah(nama: "Logika Informatika", sks:3 , semester: semester4)
        wewe4.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: wewe4),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: wewe4),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wewe4),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: wewe4),
                             KomponenNilai(nama: "Kehadiran", bobot: 10, mataKuliah: wewe4)
        ]
        
        let wewe5 = MataKuliah(nama: "Interaksi Manusia Komputer", sks:3 , semester: semester4)
        wewe5.komponen = [KomponenNilai(nama: "Tugas", bobot: 10, mataKuliah: wewe5),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: wewe5),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: wewe5),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: wewe5),
                             KomponenNilai(nama: "Keaktifan", bobot: 10, mataKuliah: wewe5)
        ]
        semester4.mataKuliah = [wewe,wewe1,wewe2,wewe3,wewe4,wewe5]

        
        
        
        
        
        
        
        
        let semester5 = Semester(nomor: 5, jurusan: jurusan)
        let wiwi = MataKuliah(nama: "Pengembangan Aplikasi Berbasis Web (+P)", sks:3 , semester: semester5)
        wiwi.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: wiwi),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: wiwi),
                             KomponenNilai(nama: "UTS", bobot: 30, mataKuliah: wiwi),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: wiwi),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: wiwi),
                             
        ]
        
        let wiwi1 = MataKuliah(nama: "Analisis dan Perancangan Perangkat Lunak", sks:3 , semester: semester5)
        wiwi1.komponen = [KomponenNilai(nama: "Tugas", bobot: 16, mataKuliah: wiwi1),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: wiwi1),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wiwi1),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: wiwi1),
                             KomponenNilai(nama: "Keaktifan", bobot: 14, mataKuliah: wiwi1)
        ]
        
        
        let wiwi2 = MataKuliah(nama: "Kecerdasan Buatan (+P)", sks:3 , semester: semester5)
        wiwi2.komponen = [KomponenNilai(nama: "Tugas Pendahuluan", bobot: 5, mataKuliah: wiwi2),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: wiwi2),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wiwi2),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: wiwi2),
                             KomponenNilai(nama: "Laporan Awal & Akhir", bobot: 10, mataKuliah: wiwi2)
        ]
        
        let wiwi3 = MataKuliah(nama: "Manajemen Proyek Teknologi Informasi", sks:3 , semester: semester5)
        wiwi3.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: wiwi3),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: wiwi3),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wiwi3),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: wiwi3),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah:wiwi3)
        ]

        let wiwi4 = MataKuliah(nama: "Pengujian dan Penjaminan Mutu Perangkat Lunak (+P)", sks:3 , semester: semester5)
        wiwi4.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: wiwi4),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: wiwi4),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wiwi4),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: wiwi4),
                             KomponenNilai(nama: "Keaktifan", bobot: 10, mataKuliah: wiwi4)
        ]
        
        let wiwi5 = MataKuliah(nama: "Kriptografi dan Keamanan Informasi", sks:3 , semester: semester5)
        wiwi5.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: wiwi5),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: wiwi5),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: wiwi5),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: wiwi5),
                             KomponenNilai(nama: "Tambahan 1", bobot: 15, mataKuliah: wiwi5)
        ]
        
        semester5.mataKuliah = [wiwi, wiwi1, wiwi2, wiwi3, wiwi4, wiwi5]
        
        
        let semester6 = Semester(nomor: 6, jurusan: jurusan)
        
        let wuwu = MataKuliah(nama: "Bahasa Inggris III", sks:3 , semester: semester6)
        wuwu.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: wuwu),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: wuwu),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: wuwu),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: wuwu),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: wuwu),
                             
        ]
        
        let wuwu1 = MataKuliah(nama: "Keamanan Perangkat Lunak", sks:3 , semester: semester6)
        wuwu1.komponen = [KomponenNilai(nama: "Tugas", bobot: 16, mataKuliah: wuwu1),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: wuwu1),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wuwu1),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: wuwu1),
                             KomponenNilai(nama: "Keaktifan", bobot: 14, mataKuliah: wuwu1)
        ]
        
        
        let wuwu2 = MataKuliah(nama: "Pengembangan Aplikasi Mobile (+P)", sks:3 , semester: semester6)
        wuwu2.komponen = [KomponenNilai(nama: "Tugas Pendahuluan", bobot: 5, mataKuliah: wuwu2),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: wuwu2),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wuwu2),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: wuwu2),
                             KomponenNilai(nama: "Laporan Awal & Akhir", bobot: 10, mataKuliah: wuwu2)
        ]
        
        let wuwu3 = MataKuliah(nama: "Pembelajaran Mesin (+P)", sks:3 , semester: semester6)
        wuwu3.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: wuwu3),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: wuwu3),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wuwu3),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: wuwu3),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah:wuwu3)
        ]

        let wuwu4 = MataKuliah(nama: "Proyek Perangkat Lunak (+P)", sks:3 , semester: semester6)
        wuwu4.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: wuwu4),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: wuwu4),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wuwu4),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: wuwu4),
                             KomponenNilai(nama: "Keaktifan", bobot: 10, mataKuliah: wuwu4)
        ]
        
        let wuwu5 = MataKuliah(nama: "Sistem Paralel dan Terdistribusi (+P)", sks:3 , semester: semester6)
        wuwu5.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: wuwu5),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: wuwu5),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: wuwu5),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: wuwu5),
                             KomponenNilai(nama: "Tambahan 1", bobot: 15, mataKuliah: wuwu5)
        ]
        semester6.mataKuliah = [wuwu, wuwu1, wuwu2, wuwu3, wuwu4, wuwu5]
        
        let semester7 = Semester(nomor: 7, jurusan: jurusan)
        
        let wowo = MataKuliah(nama: "Kerja Praktik", sks:3 , semester: semester7)
        wowo.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: wowo),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: wowo),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: wowo),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: wowo),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: wowo),
                             
        ]
        
        let wowo1 = MataKuliah(nama: "Tugas Akhir 1", sks:3 , semester: semester7)
        wowo1.komponen = [KomponenNilai(nama: "Tugas", bobot: 16, mataKuliah: wowo1),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: wowo1),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wowo1),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: wowo1),
                             KomponenNilai(nama: "Keaktifan", bobot: 14, mataKuliah: wowo1)
        ]
        
        
        let wowo2 = MataKuliah(nama: "Pemograman Berbasis Blok", sks:3 , semester: semester7)
        wowo2.komponen = [KomponenNilai(nama: "Tugas Pendahuluan", bobot: 5, mataKuliah: wowo2),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: wowo2),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wowo2),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: wowo2),
                             KomponenNilai(nama: "Laporan Awal & Akhir", bobot: 10, mataKuliah: wowo2)
        ]
        
        let wowo3 = MataKuliah(nama: "Pengembangan Aplikasi Platform Khusus", sks:3 , semester: semester7)
        wowo3.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: wowo3),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: wowo3),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wowo3),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: wowo3),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: wowo3)
        ]

        let wowo4 = MataKuliah(nama: "Pengujian Otomasi", sks:3 , semester: semester7)
        wowo4.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: wowo4),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: wowo4),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wowo4),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: wowo4),
                             KomponenNilai(nama: "Keaktifan", bobot: 10, mataKuliah: wowo4)
        ]
        
        let wowo5 = MataKuliah(nama: "Ethical Hacking dan Penetration Testing", sks:3 , semester: semester7)
        wowo5.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: wowo5),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: wowo5),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: wowo5),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah:wowo5),
                             KomponenNilai(nama: "Tambahan 1", bobot: 15, mataKuliah: wowo5)
        ]
        let wowo6 = MataKuliah(nama: "Ethical Hacking dan Penetration Testing", sks:3 , semester: semester7)
        wowo6.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: wowo6),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: wowo6),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: wowo6),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah:wowo6),
                             KomponenNilai(nama: "Tambahan 1", bobot: 15, mataKuliah: wowo6)
        ]
        semester7.mataKuliah = [wowo,wowo1, wowo2, wowo3, wowo4, wowo5, wowo6]

        
        
        let semester8 = Semester(nomor: 8, jurusan: jurusan)
        let wrwr = MataKuliah(nama: "Keteknowiraan", sks:3 , semester: semester8)
        wrwr.komponen = [KomponenNilai(nama: "Tugas", bobot: 15, mataKuliah: wrwr),
                             KomponenNilai(nama: "Praktikum", bobot: 10, mataKuliah: wrwr),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: wrwr),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: wrwr),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: wrwr),
                             
        ]
        
        let wrwr1 = MataKuliah(nama: "Tugas Akhir 2", sks:3 , semester: semester8)
        wrwr1.komponen = [KomponenNilai(nama: "Tugas", bobot: 16, mataKuliah: wrwr1),
                             KomponenNilai(nama: "Quis", bobot: 20, mataKuliah: wrwr1),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wrwr1),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: wrwr1),
                             KomponenNilai(nama: "Keaktifan", bobot: 14, mataKuliah: wrwr1)
        ]
        
        
        let wrwr2 = MataKuliah(nama: "Kapita Selekta", sks:3 , semester: semester8)
        wrwr2.komponen = [KomponenNilai(nama: "Tugas Pendahuluan", bobot: 5, mataKuliah: wowo2),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: wowo2),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wowo2),
                             KomponenNilai(nama: "UAS", bobot: 35, mataKuliah: wowo2),
                             KomponenNilai(nama: "Laporan Awal & Akhir", bobot: 10, mataKuliah: wowo2)
        ]
        
        let wrwr3 = MataKuliah(nama: "Pembangunan Aplikasi Berbasis Service", sks:3 , semester: semester8)
        wrwr3.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: wrwr3),
                             KomponenNilai(nama: "Quis", bobot: 10, mataKuliah: wrwr3),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wrwr3),
                             KomponenNilai(nama: "UAS", bobot: 25, mataKuliah: wrwr3),
                             KomponenNilai(nama: "Praktikum", bobot: 20, mataKuliah: wrwr3)
        ]

        let wrwr4 = MataKuliah(nama: "UI/UX Design", sks:3 , semester: semester8)
        wrwr4.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: wrwr4),
                             KomponenNilai(nama: "Quis", bobot: 25, mataKuliah: wrwr4),
                             KomponenNilai(nama: "UTS", bobot: 25, mataKuliah: wrwr4),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: wrwr4),
                             KomponenNilai(nama: "Keaktifan", bobot: 10, mataKuliah: wrwr4)
        ]
        
        let wrwr5 = MataKuliah(nama: "Keamanan Jaringan Siber", sks:3 , semester: semester8)
        wrwr5.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: wrwr5),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: wrwr5),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: wrwr5),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: wrwr5),
                             KomponenNilai(nama: "Tambahan 1", bobot: 15, mataKuliah: wrwr5)
        ]
        let wrwr6 = MataKuliah(nama: "Kecerdasan Komputasional", sks:3 , semester: semester8)
        wrwr6.komponen = [KomponenNilai(nama: "Tugas", bobot: 20, mataKuliah: wrwr6),
                             KomponenNilai(nama: "Quis", bobot: 15, mataKuliah: wrwr6),
                             KomponenNilai(nama: "UTS", bobot: 20, mataKuliah: wrwr6),
                             KomponenNilai(nama: "UAS", bobot: 30, mataKuliah: wrwr6),
                             KomponenNilai(nama: "Tambahan 1", bobot: 15, mataKuliah: wowo6)
        ]
        semester8.mataKuliah = [wrwr, wrwr1, wrwr2, wrwr3, wrwr4, wrwr5, wrwr6]
 
        // Tambahkan semua semester ke jurusan
        jurusan.semesters = [
            semester1, semester2, semester3,
            semester4, semester5, semester6,
            semester7, semester8
        ]
        
        return jurusan
    }
}
