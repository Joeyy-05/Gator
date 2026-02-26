//
//  MataKuliah.swift
//  Gator
//
//  Created by Foundation-009 on 30/06/25.
//

import Foundation
import SwiftData

@Model
final class MataKuliah {


    var nama: String
    var sks: Int
    @Relationship(deleteRule: .cascade, inverse: \KomponenNilai.mataKuliah)
    var komponen: [KomponenNilai] = []

    var semester: Semester?

    init(nama: String, sks: Int, semester: Semester, komponen: [KomponenNilai] = []) {
        self.nama = nama
        self.sks = sks
        self.semester = semester
        self.komponen = komponen
    }
}
