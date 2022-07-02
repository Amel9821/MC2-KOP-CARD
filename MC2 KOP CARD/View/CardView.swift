//
//  CardView.swift
//  MC2 KOP CARD
//
//  Created by Amalia . on 01/07/22.
//

import SwiftUI

struct CardView: View {
    
    @Binding var username: String
    
    var body: some View {
        ZStack {
            (LinearGradient(gradient: Gradient(colors: [Color("Color2"), Color("Color1")]), startPoint: .top, endPoint: .bottom)
                .cornerRadius(15))
            .frame(width: 390, height: 235.25, alignment: .top)
            .offset(x: 0, y:-270)
            .ignoresSafeArea()
            VStack {
                Image("Orang")
                    .resizable()
                    .frame(width: 75, height: 75, alignment: .topLeading)
                    .offset(x:-140, y:-300)
                Text(username)
                    .offset(x:-20, y: -280)
                    .foregroundColor(.white)
                Text("Suka-suka kamu, aku sukanya chanyeol")
                    .offset(x:-20, y:-250)
                    .foregroundColor(.white)
            }
            Text("KOP CARD")
                .font(.custom("Krungthep", size: 18))
                .foregroundColor(.white)
                .offset(x: 120, y: -340)
            Text("2,000 Points")
                .offset(x: 115, y:-310)
                .foregroundColor(.white)
            
            
        }
    }
}
