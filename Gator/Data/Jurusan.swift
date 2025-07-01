//
//  Jurusan.swift
//  Gator
//
//  Created by Foundation-009 on 30/06/25.
//

import Foundation
import SwiftData

@Model
final class Jurusan {
    @Attribute(.unique) var nama: String
    @Relationship(deleteRule: .cascade, inverse: \Semester.jurusan)
    var semesters: [Semester] = []
    
    init(nama: String) {
        self.nama = nama
    }
}
