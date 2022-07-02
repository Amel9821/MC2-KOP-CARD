//
//  exchangePointView.swift
//  kopcard
//
//  Created by Syifa Mashadi on 01/07/22.
//

import SwiftUI

struct exchangePointView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("BGColor")
                    .ignoresSafeArea()
                ScrollView{
                    VStack{
                        HStack{
                            Spacer()
                                .frame(width: 20)
                            ZStack {
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(Color.white)
                                    .frame(width: 155, height: 140)
                                    .shadow(color: .gray, radius: 5, x: 1, y: 2)
                                Image("twitter")
                                    .resizable()
                                    .frame(width: 63, height: 45)
                                    .offset(y: -15)
                                Text("Exchange 150 points to open **Twitter** username")
                                    .font(.system(size: 12))
                                    .frame(width: 155, height: 48)
                                    .background(Color("BGColor"))
                                    .cornerRadius(25)
                                    .offset(y: 45)
                                    .foregroundColor(.black)
                            }
                            Spacer()
                                .frame(width: 20)
                            ZStack {
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(Color.white)
                                    .frame(width: 155, height: 140)
                                    .shadow(color: .gray, radius: 7, x: 2, y: 4)
                                Image("ig")
                                    .resizable()
                                    .frame(width: 64, height: 64)
                                    .offset(y: -19)
                                Text("Exchange 150 points to open **Instagram** username")
                                    .font(.system(size: 12))
                                    .frame(width: 155, height: 48)
                                    .background(Color("BGColor"))
                                    .cornerRadius(25)
                                    .offset(y: 45)
                                    .foregroundColor(.black)
                            }
                            Spacer()
                                .frame(width: 20)
                        }
                        Spacer()
                            .frame(height: 30)
                        HStack{
                            Spacer()
                                .frame(width: 20)
                            ZStack {
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(Color.white)
                                    .frame(width: 155, height: 140)
                                    .shadow(color: .gray, radius: 5, x: 1, y: 2)
                                Image("telegram")
                                    .resizable()
                                    .frame(width: 64, height: 64)
                                    .offset(y: -19)
                                Text("Exchange 150 points to open **Telegram** username")
                                    .font(.system(size: 12))
                                    .frame(width: 155, height: 48)
                                    .background(Color("BGColor"))
                                    .cornerRadius(25)
                                    .offset(y: 45)
                                    .foregroundColor(.black)
                            }
                            Spacer()
                                .frame(width: 20)
                            ZStack {
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(Color.white)
                                    .frame(width: 155, height: 140)
                                    .shadow(color: .gray, radius: 7, x: 2, y: 4)
                                Image("line")
                                    .resizable()
                                    .frame(width: 64, height: 64)
                                    .offset(y: -19)
                                Text("Exchange 150 points to open **Line** username")
                                    .font(.system(size: 12))
                                    .frame(width: 155, height: 48)
                                    .background(Color("BGColor"))
                                    .cornerRadius(25)
                                    .offset(y: 45)
                                    .foregroundColor(.black)
                            }
                            Spacer()
                                .frame(width: 20)
                        }
                        Spacer()
                            .frame(height: 30)
                        HStack{
                            Spacer()
                                .frame(width: 20)
                            ZStack {
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(Color.white)
                                    .frame(width: 155, height: 140)
                                    .shadow(color: .gray, radius: 5, x: 1, y: 2)
                                Image("kakao")
                                    .resizable()
                                    .frame(width: 64, height: 64)
                                    .offset(y: -19)
                                Text("Exchange 150 points to open **KakaoTalk** username")
                                    .font(.system(size: 12))
                                    .frame(width: 155, height: 48)
                                    .background(Color("BGColor"))
                                    .cornerRadius(25)
                                    .offset(y: 45)
                                    .foregroundColor(.black)
                            }
                            Spacer()
                                .frame(width: 195)
                        }
                    }
                }
            }
            .navigationTitle("Exchange Point")
        }
    }
}

struct exchangePointView_Previews: PreviewProvider {
    static var previews: some View {
        exchangePointView()
    }
}
