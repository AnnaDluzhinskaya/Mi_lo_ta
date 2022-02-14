//
//  InfoCard.swift
//  Sample
//
//  Created by Anna Dluzhinskaya on 16.12.2021.
//

import SwiftUI

struct InfoCard: View {
    var babyName: String
    var image: String
    var motherName: String
    var photoDay: String
    var releaseDay: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25)
            .frame(width: 380, height: 240, alignment: .center)
            .foregroundColor(Color("CardColor"))
            .overlay(RoundedRectangle(cornerRadius: 25)
                        .stroke(Color(.white), lineWidth: 5)
                        
            )
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text(babyName)
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("TextColor"))
                            .padding(.leading, 35.0)
                            .padding(.top, 15.0)
                        Image(image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 150, alignment:.top)
                            .cornerRadius(10)
                            .clipped()
                            .padding(.leading, 15.0)
                        Spacer()
                    }
                    VStack(alignment: .leading, spacing: 10.0){
                        HStack{
                            VStack(alignment: .leading, spacing: 10.0){
                                Text("Имя мамы:")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("TextColor"))
                                Text("Дата съемки:")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("TextColor"))
                                Text("Дата релиза:")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("TextColor"))
                            }
                            
                            VStack(alignment: .leading, spacing: 10.0){
                                Text(motherName)
                                    .font(.subheadline)
                                    .foregroundColor(Color("TextColor"))
                                Text(photoDay)
                                    .font(.subheadline)
                                    .foregroundColor(Color("TextColor"))
                                Text(releaseDay)
                                    .font(.subheadline)
                                    .foregroundColor(Color("TextColor"))
                            }
                        }
                        
                    }
                    .padding(.leading, 5.0)
                }
                .frame(width: 380, height: 240, alignment: .leading)
            }
            .frame(width: 380, height: 240, alignment: .leading)
        }
        .frame(width: 380, height: 240, alignment: .center)
    }
}

struct InfoCard_Previews: PreviewProvider {
    static var previews: some View {
        InfoCard(babyName: "Миша", image: "baby1", motherName: "Aлена",photoDay: "01.11.2021", releaseDay: "05.04.2022")
    }
}
