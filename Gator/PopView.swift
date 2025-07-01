//
//  PopView.swift
//  Gator
//
//  Created by Foundation-009 on 30/06/25.
//

import SwiftUI

struct CourseComponent {
    let name: String
    let weight: Int
}

struct CoursePopupView: View {
    var courseTitle: String
    @Binding var isShowing: Bool
    var onCalculateTapped: () -> Void

    let components: [CourseComponent] = [
        CourseComponent(name: "Task", weight: 15),
        CourseComponent(name: "Quiz", weight: 20),
        CourseComponent(name: "Practicum", weight: 15),
        CourseComponent(name: "Mid", weight: 20),
        CourseComponent(name: "Final", weight: 30)
    ]
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.4)
                .ignoresSafeArea()
                .onTapGesture { isShowing = false }
            
            VStack(spacing: 0) {
                HStack {
                    Text(courseTitle)
                        .font(.headline)
                        .fontWeight(.bold)
                    Spacer()
                    Button(action: { isShowing = false }) {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title2)
                            .foregroundColor(.gray.opacity(0.8))
                    }
                }
                .padding()

                Divider()
                
                VStack(spacing: 0) {
                    TableRow(component: "Komponen", weight: "Weight", isHeader: true)
                    Divider()
                    
                    ForEach(components, id: \.name) { component in
                        TableRow(component: component.name, weight: "\(component.weight)%")
                        Divider()
                    }
                }
                .padding(.horizontal)

                Spacer()
                
                Button(action: onCalculateTapped) {
                    Text("Calculate Grade")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(12)
                }
                .padding()
                
            }
            .frame(width: 340, height: 450)
            .background(Color(UIColor.systemGray6))
            .cornerRadius(20)
            .shadow(radius: 10)
            .transition(.scale.combined(with: .opacity))
        }
        .animation(.spring(), value: isShowing)
    }
}

struct TableRow: View {
    let component: String
    let weight: String
    var isHeader: Bool = false
    
    var body: some View {
        HStack {
            Text(component)
            Spacer()
            Text(weight)
        }
        .font(isHeader ? .headline.bold() : .body)
        .padding(.vertical, 12)
    }
}

// Preview untuk CoursePopupView
#Preview {
    CoursePopupView(
        courseTitle: "Matematika Dasar I",
        isShowing: .constant(true),
        onCalculateTapped: {
            print("Tombol Calculate ditekan dari preview.")
        }
    )
}
