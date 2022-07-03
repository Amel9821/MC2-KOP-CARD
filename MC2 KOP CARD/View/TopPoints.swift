//
//  TopPoints.swift
//  MC2 KOP CARD
//
//  Created by Brenda Nathania Passandaran on 02/07/22.
//

import SwiftUI

struct TopPoints: View {
    var body: some View {
        
      
        VStack{
        
                    Text("Top Points")
                        .font(.system(size: 25)).bold()
        
                        .offset(x: -100, y: 40)
        
                    ScrollView{
                        VStack(spacing: 20) {
                            ForEach(0..<20) {_ in
                                
                                HStack{
                                    Text("")
                                        .foregroundColor(.white)
                                        .font(.largeTitle)
                                        .frame(width: 50, height: 50)
                                        .background(Color("ColorProfile"))
                                        .cornerRadius(10)
                                        .padding(5)
                                        .offset(x: 180)
                                    
                                    VStack{
                                        Text("ACCUTE")
                                            .frame(width: 450)
                                            .offset(x: -10,y: -2)
                                            .font(.system(size: 13).bold())
                                        
                                    
                                    Text("3000 Points")
                                            .frame(width: 450)
                                            .offset(x: 0,y: 5)
                                            .font(.system(size: 13))
                                    }
                                }
                                        
                                }
                            }
                    }.padding(.top, 40)
                .offset(x: -70)
        
        
                       // .background(CustomColor.myColor2)
        
                    Spacer()
                .background(Color("Color3"))
            
                }
        
    }
}

struct TopPoints_Previews: PreviewProvider {
    static var previews: some View {
        TopPoints()
    }
}



//NYOBA
