//
//  idolView.swift
//  kopcard
//
//  Created by Syifa Mashadi on 02/07/22.
//

import SwiftUI

struct idolView: View {
    @Binding var showidolView: Bool
    
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
                                    .fill(Color("GPurple"))
                                    .frame(width: 152, height: 163)
                                    .shadow(color: .gray
                                            , radius: 1, x: 2, y: 0)
                                Image("bts")
                                    .resizable()
                                    .frame(width: 150, height: 160, alignment: .top)
                                    .cornerRadius(25)
                                Text("**BTS**")
                                    .font(.system(size: 14))
                                    .frame(width: 152, height: 65)
                                    .background(.white)
                                    .cornerRadius(21)
                                    .offset(y: 49)
                                    .foregroundColor(.black)
                            }
                            Spacer()
                                .frame(width: 20)
                            ZStack {
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(Color("GPurple"))
                                    .frame(width: 152, height: 163)
                                    .shadow(color: .gray
                                            , radius: 1, x: 2, y: 0)
                                Image("exo")
                                    .resizable()
                                    .frame(width: 150, height: 160, alignment: .top)
                                    .cornerRadius(25)
                                Text("**EXO**")
                                    .font(.system(size: 14))
                                    .frame(width: 152, height: 65)
                                    .background(.white)
                                    .cornerRadius(21)
                                    .offset(y: 49)
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
                                    .fill(Color("GPurple"))
                                    .frame(width: 152, height: 163)
                                    .shadow(color: .gray
                                            , radius: 1, x: 2, y: 0)
                                Image("SJ")
                                    .resizable()
                                    .frame(width: 150, height: 160, alignment: .top)
                                    .cornerRadius(25)
                                Text("**SUPER JUNIOR**")
                                    .font(.system(size: 14))
                                    .frame(width: 152, height: 65)
                                    .background(.white)
                                    .cornerRadius(21)
                                    .offset(y: 49)
                                    .foregroundColor(.black)
                            }
                            Spacer()
                                .frame(width: 20)
                            ZStack {
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(Color("GPurple"))
                                    .frame(width: 152, height: 163)
                                    .shadow(color: .gray
                                            , radius: 1, x: 2, y: 0)
                                Image("nctdream")
                                    .resizable()
                                    .frame(width: 150, height: 160, alignment: .top)
                                    .cornerRadius(25)
                                Text("**NCT DREAM**")
                                    .font(.system(size: 14))
                                    .frame(width: 152, height: 65)
                                    .background(.white)
                                    .cornerRadius(21)
                                    .offset(y: 49)
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
                                    .fill(Color("GPurple"))
                                    .frame(width: 152, height: 163)
                                    .shadow(color: .gray
                                            , radius: 1, x: 2, y: 0)
                                Image("seventeen")
                                    .resizable()
                                    .frame(width: 150, height: 160, alignment: .top)
                                    .cornerRadius(25)
                                Text("**SEVENTEEN**")
                                    .font(.system(size: 14))
                                    .frame(width: 152, height: 65)
                                    .background(.white)
                                    .cornerRadius(21)
                                    .offset(y: 49)
                                    .foregroundColor(.black)
                            }
                            Spacer()
                                .frame(width: 195)
                        }
                    }
                }
            }
            .navigationTitle("Idol")
        }
    }
}

struct idolView_Previews: PreviewProvider {
    @State static var showidolView: Bool = false
    static var previews: some View {
        idolView(showidolView: $showidolView)
    }
}
