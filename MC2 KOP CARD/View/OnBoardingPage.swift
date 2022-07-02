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
    @State private var showDashboard: Bool = false
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        NavigationView {
        VStack{
            HStack{
                Spacer()
                NavigationLink(destination: DashboardUtama(), isActive: self.$showDashboard, label: {
                    Text("Skip")
                        .onTapGesture{
                            self.showDashboard = true
                        }
                        .padding(16)
                        .foregroundColor(.gray)
                }
                )
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
                            .frame(width: 250, height: 250)
                        
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
            .padding(.bottom, 24)
            Button(action:{
                if self.currentStep < onBoardingSteps.count - 1 {
                    self.currentStep += 1
                } else {
                    
                }
                
                if currentStep >= onBoardingSteps.count - 1 {
                    self.showDashboard = true
                }
//                print(currentStep)
//                print(onBoardingSteps.count)
                
            }){
                Text(currentStep < onBoardingSteps.count - 1 ? "Next" : "Get started")
                    .padding(16)
                    .frame(maxWidth: .infinity)
                    .background(CustomColor.ColorKopCard)
                    .cornerRadius(16)
                    .padding(.horizontal, 16)
                    .foregroundColor(.purple)
            }
            .buttonStyle(PlainButtonStyle())
        }
        }}
}
struct OnBoardingPage_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingPage()
    }
}
