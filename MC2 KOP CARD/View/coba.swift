//
//  CardSwiftUIView.swift
//  KopCard
//
//  Created by Ayu Mutiara Dewi on 30/06/22.
//

import SwiftUI

struct coba: View {
    var idolName: String = ""
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "chevron.backward")
                    } .font(.title)
                        .padding(.leading)
                        .foregroundColor(Color("FontColor"))
                    Text("Idol")
                        .font(.title.weight(.bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                ScrollView {
                    VStack {
                        ForEach(0 ..< 4) { item in
                            HStack {
                                Button {
                                    
                                } label: {
                                    ZStack {
                                        Image("exo")
                                            .resizable()
                                            .frame(width: 150, height: 150)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                            .shadow(color: .gray, radius: 5)
                                        Text("BTS")
                                            .fontWeight(.bold)
                                            .frame(width: 150, height: 75)
                                            .background(.white)
                                            .cornerRadius(10)
                                            .offset(y: 63)
                                    }
                                    .foregroundColor(.black)
                                }
                                //                                    RoundedRectangle(cornerRadius: 10)
                                //                                        .fill(.gray)
                                //                                        .frame(width: 150, height: 200)
                                //                                        .shadow(color: .gray, radius: 5)
                                
                                .padding()
                                Button {
                                    
                                } label: {
                                    ZStack {
                                        Image("exo")
                                            .resizable()
                                            .frame(width: 150, height: 150)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                            .shadow(color: .gray, radius: 5)
                                        Text("BTS")
                                            .fontWeight(.bold)
                                            .frame(width: 150, height: 75)
                                            .background(.white)
                                            .cornerRadius(10)
                                            .offset(y: 63)
                                    }
                                    .foregroundColor(.black)
                                }
                                .padding()
                            }
                        }
                    }
                    
                }
            }
        }
    }
}

//struct Tab: View {
//    var body: some View {
//        TabView {
//            CardView()
//                .tabItem {
//                    Image(systemName: "house")
//                    Text("Home")
//                }
//            EventView()
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//        }
//    }
//}

struct coba_Previews: PreviewProvider {
    static var previews: some View {
        coba()
    }
}
