//
//  Views.swift
//  Gator
//
//  Created by Foundation-009 on 30/06/25.
//

//
//  Mantap2.swift
//  Grade Calculator
//
//  Created by Foundation-009 on 23/06/25.
//

//
//  ContentView.swift
//  Grade Calculator
//
//  Created by Foundation-009 on 20/06/25.
//

import SwiftUI

struct Mantap2: View {
    var body: some View {
        VStack(spacing: 20){
            
            //Component
            HStack{
                Text("Matematika Dasar I")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.green)
                
                Spacer()
            }
            
            
            //Predict
            HStack{
                Text("Predict Grade")
                    .foregroundStyle(.black)
                
                Spacer()
                
                Picker(selection: .constant(0), label: Text("Picker")) {
                    Text("Pilih Grade").tag(0)
                    Text("A").tag(1)
                    Text("AB").tag(2)
                    Text("B").tag(3)
                    Text("BC").tag(4)
                    Text("C").tag(5)
                    Text("D").tag(6)
                    Text("E").tag(7)
                    
                        
                }
                .tint(.white)
                .background(.green )
                .cornerRadius(8)
            }
            .foregroundStyle(.white)
           

            
            //Task
            HStack{
                VStack(alignment: .leading){
                    
                    Text("Task(15%)")
                        .fontWeight(Font.Weight.bold)
                    
                    TextField("Nilai Aktual", text: .constant(""))
                        .keyboardType(.decimalPad)
                        .padding(10)
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(8)
                }
                
                
                VStack{
                    Text("Minimum Score")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    Label("-", systemImage:"")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                        .frame(width: 100, alignment: .trailing)

                }
                
            }
            
            //Quiz
            HStack{
                VStack{
                    HStack{
                        Text("Quiz(20%)")
                            .fontWeight(Font.Weight.bold)
                        Spacer()
                    }
                    
                    
                    TextField("Nilai Aktual", text: .constant(""))
                        .keyboardType(.decimalPad)
                        .padding(10)
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(8)
                }
                
                VStack{
                    Text("Minimum Score")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    Label("-", systemImage:"")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                        .frame(width: 100, alignment: .trailing)
                }
            }
            
            //Practikum
            HStack{
                VStack{
                    HStack{
                        Text("Practikum(15%)")
                            .fontWeight(Font.Weight.bold)
                        Spacer()
                    }
                    
                    
                    TextField("Nilai Aktual", text: .constant(""))
                        .keyboardType(.decimalPad)
                        .padding(10)
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(8)
                }
                
                VStack{
                    Text("Minimum Score")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    Label("-", systemImage:"")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                        .frame(width: 100, alignment: .trailing)
                }
            }
            
            //Mid
            HStack{
                VStack{
                    HStack{
                        Text("Mid(20%)")
                            .fontWeight(Font.Weight.bold)
                        Spacer()
                    }
                    
                    
                    TextField("Nilai Aktual", text: .constant(""))
                        .keyboardType(.decimalPad)
                        .padding(10)
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(8)
                }
                
                VStack{
                    Text("Minimum Score")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    Label("-", systemImage:"")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                        .frame(width: 100, alignment: .trailing)
                }
            }
            
            //Final
            HStack{
                VStack{
                    HStack{
                        Text("Final(30%)")
                            .fontWeight(Font.Weight.bold)
                        Spacer()
                    }
                    
                    
                    TextField("Nilai Aktual", text: .constant(""))
                        .keyboardType(.decimalPad)
                        .padding(10)
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(8)
                }
                
                VStack{
                    Text("Minimum Score")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    Label("-", systemImage:"")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                        .frame(width: 100, alignment: .trailing)
                }
            }
            
            Spacer()
            
            Text("Silakan pilih target grade untuk memulai kalkulasi !")
                .font(.footnote)
                .padding()
       
           
                .foregroundStyle(.red)
        }
        .padding()
        .background(.white)
    }
}

#Preview {
    Mantap2()
}


