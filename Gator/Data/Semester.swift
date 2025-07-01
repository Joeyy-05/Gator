//
//  Semester.swift
//  Gator
//
//  Created by Foundation-009 on 30/06/25.
//

import Foundation
import SwiftData

@Model
final class Semester {
    var nomor: Int // Semester 1, 2, 3, dst.
    @Relationship(deleteRule: .cascade, inverse: \MataKuliah.semester)
    var mataKuliah: [MataKuliah] = []
    
    // Hubungan balik ke Jurusan
    var jurusan: Jurusan?
    
    init(nomor: Int) {
        self.nomor = nomor
    }
}
