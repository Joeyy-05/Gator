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
    var nomor: Int
    @Relationship(deleteRule: .cascade, inverse: \MataKuliah.semester)
    var mataKuliah: [MataKuliah] = []
    
    var jurusan: Jurusan?
    
    init(nomor: Int, jurusan: Jurusan) {
        self.nomor = nomor
        self.jurusan = jurusan
    }
}
