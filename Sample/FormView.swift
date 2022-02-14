//
//  FormView.swift
//  Sample
//
//  Created by Anna Dluzhinskaya on 22.01.2022.
//

import SwiftUI

struct FormView: View {
    @State private var motherName: String = ""
    @State private var childName: String = ""
    @State private var phoneNumber: String = ""
    @State private var photoDate = Date()
    @State private var publishedDate = Date()
    var body: some View {
        ZStack(){
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("Background"))
            VStack(alignment: .center, spacing: 0){
                ZStack{
                    Rectangle()
                        .ignoresSafeArea()
                        .frame(width: 420, height: 60)
                        .foregroundColor(Color("TextColor"))
                    HStack{
                        Text("Mi_lo_ta")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(.white))
                        
                    }
                }
                
                HStack(alignment: .center, spacing: 10){
                    VStack(alignment: .leading, spacing: 30){
                        Text("Имя ребенка:")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                        
                        Text("Имя матери:")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                    
                        Text("Телефон:")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                        }
                        
                    VStack(alignment: .leading, spacing: 25){
                        TextField("напишите имя...", text: $motherName)
                            .frame(width: 180, height: 30, alignment: .leading)
                            .padding(6)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .border(Color(UIColor.separator))
                            .background(Color(.white))
                            .foregroundColor(Color("TextColor"))
                            .cornerRadius(10)
                            
                        TextField("напишите имя...", text: $childName)
                            .frame(width: 180, height: 30, alignment: .leading)
                            .padding(6)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .border(Color(UIColor.separator))
                            .background(Color(.white))
                            .cornerRadius(10)
                        
                        TextField("ввидите номер...", text: $phoneNumber)
                            .frame(width: 180, height: 30, alignment: .leading)
                            .padding(6)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .border(Color(UIColor.separator))
                            .background(Color(.white))
                            .cornerRadius(10)
                    }
                    
                }.padding(20)
                
                HStack(alignment: .top, spacing: 39){
                    VStack(alignment: .leading, spacing: 40){
                        Text("Дата съемки:")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                        
                        Text("Дата релиза:")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                    }
                    
                    VStack(alignment: .leading, spacing: 17){
                        DatePicker("photoDate", selection: $photoDate, displayedComponents: .date)
                            .labelsHidden()
                            .accentColor(.white)
                            .frame(width: 160, height: 50, alignment: .center)
                            .scaleEffect(CGSize(width: 1.2, height: 1.2))
                            .id(photoDate)
        
                            
                        
                        DatePicker("publishedDate", selection: $publishedDate, in: Date()... , displayedComponents: .date)
                            .labelsHidden()
                            .accentColor(Color(.white))
                            .frame(width: 160, height: 50, alignment: .center)
                            .scaleEffect(CGSize(width: 1.2, height: 1.2))
                            
                            .id(publishedDate)
                        
                            
                    }
                }.padding(5)
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                    .frame(width: 300, height: 250, alignment: .center)
                    .foregroundColor(Color("CardColor"))
                    .overlay(RoundedRectangle(cornerRadius: 25)
                                .stroke(Color(.white), lineWidth: 5)
                    )
                    Image("photoIcon")
                }
                Spacer()
            }
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
