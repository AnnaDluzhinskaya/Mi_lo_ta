//
//  ContentView.swift
//  Sample
//
//  Created by Anna Dluzhinskaya on 16.12.2021.
//

import SwiftUI

struct ContentView: View {
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
                
                ScrollView{
                    Spacer()
                    VStack(alignment: .center, spacing: 20) {
                        ForEach(1..<4){_ in
                            InfoCard(babyName: "Миша", image: "baby1", motherName: "Aлена",photoDay: "01.11.2021", releaseDay: "05.04.2022")
                        }
                    }
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





