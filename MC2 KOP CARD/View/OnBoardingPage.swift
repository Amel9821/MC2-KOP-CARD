//
//  OnBoardingPage.swift
//  MC2 KOP CARD
//
//  Created by Pieter Yoshua Natanael on 29/06/22.
//

import SwiftUI

struct CustomColor {
    static let ColorKopCard = Color("ColorKopCard")
    // Add more here...
}

struct OnBoardingStep {
    var image: String
    let title: String
    let description: String
}

private let onBoardingSteps = [
    OnBoardingStep(image: "Image1", title: "Fancard", description: "Create your fancard!"),
    OnBoardingStep(image: "Image2", title: "Connect", description: "Get connected with other Kpop fans when attending Kpop events!"),
    OnBoardingStep(image: "Image3", title: "Scan QR code", description: "Scan QR code to connect with Kpop fans!"),
    OnBoardingStep(image: "Image4", title: "Points", description: "Get your points to improve your fancard!"),
    OnBoardingStep(image: "Image5", title: "Community", description: "Increase your experience when attend Kpop events!"),
]

struct OnBoardingPage: View {
    @State private var currentStep = 0
    @State var showTabBar = false
    @State var username = ""
    @State var name = ""
    @State var imageSelected = UIImage()
   // @State var showDashboard: Bool = false
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        //NavigationView {
            VStack{
                HStack{
                    Spacer()
                    Button {
                        showTabBar.toggle()
                        //UserDefaults.standard.set(true, forKey: "isDoneOnboarding")
                    } label: {
                        Text("Skip")
                            }
                            .padding(16)
                            .foregroundColor(.gray)
                    
//                    NavigationLink(destination: DashboardUtama(), isActive: self.$showDashboard, label: {
//                        Text("Skip")
//                            .onTapGesture{
//                                self.showDashboard = true
//                            }
//                            .padding(16)
//                            .foregroundColor(.gray)
//                    }
//                    )
                    //                Button(action: {
                    //                    self.currentStep = onBoardingSteps.count - 1
                    //                }){
                    //                    Text("Skip")
                    //                        .padding(16)
                    //                        .foregroundColor(.gray)
                    //                }
                    
                }
                
                TabView(selection: $currentStep){
                    ForEach(0..<onBoardingSteps.count,id:\.self) { it in
                        
                        VStack{
                            Image(onBoardingSteps[it].image)
                                .resizable()
                                .frame(width: 220, height: 200)
                            
                            Text(onBoardingSteps[it].title)
                                .font(.title)
                                .bold()
                            
                            Text(onBoardingSteps[it].description)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 32)
                                .padding(.top, 16)
                            
                        }
                        .tag(it)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                HStack{
                    ForEach(0..<onBoardingSteps.count,id:\.self) {it in
                        if it == currentStep {
                            Circle()
                                .frame(width: 20, height: 10)
                                .cornerRadius(10)
                                .foregroundColor(CustomColor.ColorKopCard)
                        } else {
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .padding(.bottom, 60)
             //   .offset(x: 0, y: -70)
                Button(action:{
                    if self.currentStep < onBoardingSteps.count - 1 {
                        self.currentStep += 1
                    } else {
                        
                    }
                    
                    if currentStep >= onBoardingSteps.count - 1 {
                        self.showTabBar = true
                        //UserDefaults.standard.set(true, forKey: "isDoneDashboard")
                    }
//                                    print(currentStep)
//                                    print(onBoardingSteps.count)
                    
                }){
//                    Button {
//                        showDashboard.toggle()
//                    } label : {
                    Text(currentStep < onBoardingSteps.count - 1 ? "Next" : "Get started")
                        .padding(16)
                        .frame(maxWidth: .infinity)
                        .background(CustomColor.ColorKopCard)
                        .cornerRadius(16)
                        .padding(.horizontal, 16)
                        .foregroundColor(.purple)
                       // .offset(x:0, y:-60)
                
                .buttonStyle(PlainButtonStyle())
            }
                .fullScreenCover(isPresented: $showTabBar) {
                    TabBar(username: $username, name: $name, TabBar: $showTabBar, imageSelected: $imageSelected)
            }
//            .sheet(isPresented: $showDashboard) {
//                DashboardUtama(showDashboard: $showDashboard)}
        }
            
    }
//}
struct OnBoardingPage_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingPage()
    }
}
}
