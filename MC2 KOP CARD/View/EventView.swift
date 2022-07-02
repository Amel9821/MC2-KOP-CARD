//
//  EventView.swift
//  kopcard
//
//  Created by Syifa Mashadi on 01/07/22.
//

import SwiftUI

struct EventView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    ZStack{
                        Image("theboyz")
                            .resizable()
                            .frame(width: 357, height: 171)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        //               .contrast(0.9)
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.black)
                                .frame(width: 357, height: 171)
                                .opacity(0.1)
                            Text(
    """
    THE BOYZ WORLD TOUR: THE B-ZONE
    July 9, 2022
    Tennis Indoor Stadium Senayan
    """
                            )
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .frame(height: 250, alignment: .bottom)
                        }
                        
                    }
                }
            }
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
    }
}
