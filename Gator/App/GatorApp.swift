//
//  Gator_Final_BangetApp.swift
//  Gator Final Banget
//
//  Created by Foundation-017 on 07/07/25.
//

import SwiftUI
import SwiftData

@main
struct Gator_Final_BangetApp: App {
    let container: ModelContainer

    init() {
       
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backButtonAppearance.normal.titlePositionAdjustment = UIOffset(horizontal: -1000, vertical: 0)

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance

        do {
            let schema = Schema([Jurusan.self, Semester.self, MataKuliah.self, KomponenNilai.self])
            let config = ModelConfiguration("GatorDB", schema: schema)
            container = try ModelContainer(for: schema, configurations: config)
        } catch {
            fatalError("Gagal membuat ModelContainer: \(error.localizedDescription)")
        }
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(container)
    }
}
