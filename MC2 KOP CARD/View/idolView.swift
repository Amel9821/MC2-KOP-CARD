//
//  idolView.swift
//  kopcard
//
//  Created by Syifa Mashadi on 02/07/22.
//

import SwiftUI

struct idolView: View {
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
                            ZStack {
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(Color("GPurple"))
                                    .frame(width: 152, height: 163)
                                    .shadow(color: .gray
                                            , radius: 1, x: 2, y: 0)
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
                            ZStack {
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(Color("GPurple"))
                                    .frame(width: 152, height: 163)
                                    .shadow(color: .gray
                                            , radius: 1, x: 2, y: 0)
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
                                Text("**NCT DREAM**")
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
            .navigationTitle("Exchange Point")
        }
    }
}

struct idolView_Previews: PreviewProvider {
    static var previews: some View {
        idolView()
    }
}
