//
//  DashboardUtama.swift
//  KOP CARD
//
//  Created by Brenda Nathania Passandaran on 01/07/22.
//

import SwiftUI

//struct OnBoardingStep {
//    var image: String
//    let title: String
//    let description: String
//}
//
//private let onBoardingSteps = [
//    OnBoardingStep(image: "Image1", title: "Fancard", description: "Create your fancard!"),
//    OnBoardingStep(image: "Image2", title: "Connect", description: "Get connected with other Kpop fans when attending Kpop events!"),
//    OnBoardingStep(image: "Image3", title: "Scan QR code", description: "Scan QR code to connect with Kpop fans!"),
//    OnBoardingStep(image: "Image4", title: "Points", description: "Get your points to improve your fancard!"),
//    OnBoardingStep(image: "Image5", title: "Community", description: "Increase your experience when attend Kpop events!"),
//]

struct DashboardUtama: View {
    var body: some View {

        VStack{

            HStack{

                Image("KOPCARDTITLE")
                    .resizable()
                    .frame(width: 170, height: 25)
                    .padding(.leading,30)


                Spacer(minLength: 0)

                Button(action: {}){
                Image(systemName: "person.2.wave.2.fill")
                        .resizable()
                        .frame(width: 40, height: 25)
                        .foregroundColor(Warna.myColor)
                }.padding(.trailing,30)


            }.padding(.top,40)

            ZStack{
            RoundedRectangle(cornerRadius: 10)

                .fill(LinearGradient(gradient: Gradient(colors: [Color("Color1B"), Color("Color2B")]), startPoint: .top, endPoint: .bottom))
                .frame(width: 330, height: 120)
                .padding(.top, 20)

               Image("cewek")
                    .resizable()
                    .frame(width: 90, height: 110)
                    .offset(x: -105, y: 15)

                Image("cowok")
                     .resizable()
                     .frame(width: 90, height: 110)
                     .offset(x: 105, y: 15)

                Text("Scan and connect!")
                    .foregroundColor(Color.white)
                    //.font(Font.custom("Krungthep", size: 18))
                    .offset(y: -10)
            

                Button(action: {}){
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(Color("Color1B"))
                            .frame(width: 85, height: 40)
                            .background(Color("ColorAbu"))
                            .cornerRadius(10)
                }.offset( y: 35)

            }

            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .frame(width: 330, height: 250)
                    .padding(.top, 20)

                Text("Top Points")
                    .font(.system(size: 25)).bold()
//                    .font(.system(size: 25)).bold()
                    .offset(x: -90, y: -85)

                Button(action: {}){
                    Text("See All")
                        .foregroundColor(Color("Color1B"))

                }.offset(x: 110, y: -85)

                Image("blankspace")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .offset(x: -110, y: -25)

                Text("aecute")
                    .font(.system(size: 20)).bold()
                    .offset(x: -30, y: -35)

                Text("3000 Points")
                    .font(.system(size: 15))
                    .offset(x: -20, y: -15)

                Image("blankspace")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .offset(x: -110, y: 70)

                Text("aecute")
                    .font(.system(size: 20)).bold()
                    .offset(x: -30, y: 60)

                Text("3000 Points")
                    .font(.system(size: 15))
                    .offset(x: -20, y: 80)
            }

            ZStack{
            Text("Events")
                .font(.system(size: 25)).bold()
                .offset(x: -120, y: 10)
            
            Button(action: {}){
                Text("See All")
                    .foregroundColor(Color("Color1B"))
                    
            }.offset(x: 110,y: 10)
                
            }

            ScrollView(.horizontal) {
                HStack(spacing: -30) {
                    ForEach(0..<5) {_ in
                        
                        ZStack{
                        Image("ScrollViewEvents")
                            .resizable()
                            .frame(width: 160, height: 160)
                            .padding(.leading, 26)
                            .offset(y: 10)
                            
                            Text("""
                            NEO LINK 2022
                            2 July 2022
                            """).offset(y: 55)
                                .font(.system(size: 12).bold())
                              
                        }
                    }

                }
            }
            

            Spacer()
//                .foregroundColor(CustomColor.myColor2)
        }
        
        .background(Warna.myColor2)
        

        
    }
    
}



struct Acara: View{
    var body: some View{
       Text("")
    }
}

struct Akun: View{
    var body: some View{
       Text("")
    }
}

struct Warna {
    static let myColor = Color("Color1B")
    static let myColor2 = Color("Color3B")
}

struct Dashboard: View{
    var body: some View{
        TabView{
            DashboardUtama()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
                    
            Acara()
            .tabItem{
                            Image(systemName: "calendar")
                            Text("Events")
                        }
                    
            Akun()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
            }
        }
    }





struct DashboardUtama_Previews: PreviewProvider {
        static var previews: some View {
            Dashboard()
        }
    }
