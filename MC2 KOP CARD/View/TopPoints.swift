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
                                ForEach(0..<10) {
                                    Text("Item \($0)")
                                        .foregroundColor(.white)
                                        .font(.largeTitle)
                                        .frame(width: 200, height: 200)
                                        .background(.red)
                                }
                            }
                    }
        
        
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
