//
//  CourseButtonView.swift
//  Gator
//
//  Created by Foundation-009 on 30/06/25.
//


import SwiftUI
import SwiftData

struct CourseButtonView: View {
    @Bindable var mataKuliah: MataKuliah
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "books.vertical.fill").font(.title).foregroundColor(.green)
            Spacer()
            Text(mataKuliah.nama).font(.subheadline).fontWeight(.bold).foregroundColor(.black).multilineTextAlignment(.center).minimumScaleFactor(0.8)
        }
        .frame(maxWidth: .infinity, minHeight: 120).padding()
        .background(Color.white).cornerRadius(12)
        .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.gray.opacity(0.2), lineWidth: 1))
        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}
