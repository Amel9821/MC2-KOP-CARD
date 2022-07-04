//
//  ProfileCard.swift
//  kopcard
//
//  Created by Syifa Mashadi on 25/06/22.
//

import SwiftUI

struct ProfileCard: View {
    
 //   @State var imageSelected = UIImage()
    //var imageSelected = UIImage()
    @State var Bio: String
    @Binding var name: String
    @Binding var username: String
    @State var showidolView: Bool = false
    @State var showExchangePoint: Bool  = false
    @State var showEditKopCard: Bool = false
    @Binding var imageSelected: UIImage
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("BGColor")
                    .ignoresSafeArea()
                ScrollView{
                    VStack{
                        ZStack{
                            Button {
                                showEditKopCard.toggle()
                            } label: {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(
                                    LinearGradient(gradient: Gradient(colors: [Color("DPurple"), Color("GPurple")]),
                                                   startPoint: .bottom,
                                                   endPoint: .center))
                                .frame(width: 358, height: 233)}
                            VStack(alignment: .leading){
                                HStack{
                                    Image(uiImage: imageSelected)
                                        //uiImage: imageSelected)
                                    //"ProfileI"
                                        .resizable()
                                        .frame(width: 75, height: 75)
                                    Spacer()
                                        .frame(width: 150)
                                    VStack{
                                        Text("KOP Card")
                                            .font(Font.custom("Krungthep", size: 18))
                                            .foregroundColor(.white)
                                        Text("150 Points")
                                            .foregroundColor(.white)
                                        Spacer()
                                            .frame(height: 25)
                                    }
                                }
                                Spacer()
                                    .frame(height: 30)
                                Text(username)
                                    .foregroundColor(.white)
                                    .font(.system(size: 24, weight: .bold, design: .default))
                                Spacer()
                                    .frame(height: 5)
                               Text(Bio)
                                    .foregroundColor(.white)
                                Spacer()
                                    .frame(height: 40)
                            }
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(Color.white)
                                .frame(width: 358, height: 215)
                            VStack(alignment: .leading){
                                Text("Social Media")
                                    .font(.system(size: 25, weight: .bold, design: .default))
                                
                                Button {} label : {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .stroke(.gray, lineWidth: 1)
                                            .frame(width: 302, height: 34)
                                        HStack{
                                            Image("twitterBW")
                                                .resizable()
                                                .frame(width: 21, height: 21)
                                            Text("username")
                                        }
                                    }
                                }.foregroundColor(.black)
                                
                                Spacer()
                                    .frame(height: 15)
                                HStack{
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .stroke(.gray, lineWidth: 1)
                                            .frame(width: 141, height: 34)
                                        HStack{
                                            Image("kakaoBW")
                                                .resizable()
                                                .frame(width: 21, height: 21)
                                            Text("username")
                                        }
                                    }
                                    Spacer()
                                        .frame(width: 21)
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .stroke(.gray, lineWidth: 1)
                                            .frame(width: 141, height: 34)
                                        HStack{
                                            Image("igBW")
                                                .resizable()
                                                .frame(width: 21, height: 21)
                                            Text("username")
                                        }
                                    }
                                }
                                Spacer()
                                    .frame(height: 15)
                                HStack{
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .stroke(.gray, lineWidth: 1)
                                            .frame(width: 141, height: 34)
                                        HStack{
                                            Image("lineBW")
                                                .resizable()
                                                .frame(width: 21, height: 21)
                                            Text("username")
                                        }
                                    }
                                    Spacer()
                                        .frame(width: 21)
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .stroke(.gray, lineWidth: 1)
                                            .frame(width: 141, height: 34)
                                        HStack{
                                            Image("telegramBW")
                                                .resizable()
                                                .frame(width: 21, height: 21)
                                            Text("username")
                                        }
                                    }
                                }
                            }
                        }
//                        ZStack{
//                            RoundedRectangle(cornerRadius: 25, style: .continuous)
//                                .fill(Color.white)
//                                .frame(width: 358, height: 215)
//                            VStack(alignment: .leading){
//                                Text("Social Media")
//                                    .font(.system(size: 25, weight: .bold, design: .default))
//                                ZStack{
//                                    RoundedRectangle(cornerRadius: 25, style: .continuous)
//                                        .stroke(Color("Ctwitter"), lineWidth: 1)
//                                        .frame(width: 302, height: 34)
//                                    HStack{
//                                        Image("twitter")
//                                            .resizable()
//                                            .frame(width: 21, height: 21)
//                                        Text("username")
//                                    }
//                                }
//                                Spacer()
//                                    .frame(height: 15)
//                                HStack{
//                                    ZStack{
//                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
//                                            .stroke(Color("Ckakao"), lineWidth: 1)
//                                            .frame(width: 141, height: 34)
//                                        HStack{
//                                            Image("kakao")
//                                                .resizable()
//                                                .frame(width: 21, height: 21)
//                                            Text("username")
//                                        }
//                                    }
//                                    Spacer()
//                                        .frame(width: 21)
//                                    ZStack{
//                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
//                                            .stroke(Color("Cig"), lineWidth: 1)
//                                            .frame(width: 141, height: 34)
//                                        HStack{
//                                            Image("ig")
//                                                .resizable()
//                                                .frame(width: 21, height: 21)
//                                            Text("username")
//                                        }
//                                    }
//                                }
//                                Spacer()
//                                    .frame(height: 15)
//                                HStack{
//                                    ZStack{
//                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
//                                            .stroke(Color("Cline"), lineWidth: 1)
//                                            .frame(width: 141, height: 34)
//                                        HStack{
//                                            Image("line")
//                                                .resizable()
//                                                .frame(width: 21, height: 21)
//                                            Text("username")
//                                        }
//                                    }
//                                    Spacer()
//                                        .frame(width: 21)
//                                    ZStack{
//                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
//                                            .stroke(Color("Ctelegram"), lineWidth: 1)
//                                            .frame(width: 141, height: 34)
//                                        HStack{
//                                            Image("telegram")
//                                                .resizable()
//                                                .frame(width: 21, height: 21)
//                                            Text("username")
//                                        }
//                                    }
//                                }
//                            }
//                        }
//                        Spacer()
//                            .frame(height: 20)
                        HStack{
                            Text("Idol")
                                .font(.system(size: 25, weight: .bold, design: .default))
                            Spacer()
                                .frame(width: 280)
                            Button{
                                showidolView.toggle()
                            }
                        label: {
                                Image(systemName: "plus")
                                    .font(.system(size: 25))
                                    .foregroundColor(Color("DPurple"))
                            }
                        }
                        ScrollView(.horizontal) {
                            HStack(spacing: 20){
                                Spacer()
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
                            }
                        }
                    }
                }
            }
            .sheet(isPresented: $showEditKopCard) {
                EditKopCard(EditKopCard: $showEditKopCard, imageSelected: $imageSelected, name: $name, username: $username, Bio: $Bio)}
            .sheet(isPresented: $showExchangePoint) {
                exchangePointView(showExchangePoint: $showExchangePoint)}
            .sheet(isPresented: $showidolView) {
                idolView(showidolView: $showidolView)}
            .toolbar {
                Button{
                    showExchangePoint.toggle()
                } label: {
                    Image("pointPurple")}
                
                
                //                    Custom color and font
                //                    .foregroundColor(Color("color.red"))
                //  .font(.custom("Krungthep", size: 36))
            }
        }
    }
}


//struct ProfileCard_Previews: PreviewProvider {
//    @State static var username: String = ""
//    @State static var name: String = ""
//    @State static var Bio: String = ""
//    @State static var imageSelected = UIImage()
//    static var previews: some View {
//        ProfileCard(imageSelected: imageSelected, Bio: Bio, name: $name, username: $username)
//    }
//}
