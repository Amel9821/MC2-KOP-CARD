//
//  EventView.swift
//  kopcard
//
//  Created by Syifa Mashadi on 01/07/22.
//

import SwiftUI

struct EventView: View {
    @State var searchQuery: String = ""
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
                                .frame(width: 357, height: 220)
                                .opacity(0.1)
                            Image("NCTback")
                                .resizable()
                                .frame(width: 357, height: 220, alignment: .center)
                            Text(
    """
    NCT 127 Comeback
    4 June 2022
    Coffe Shop Menteng
    """
                            )
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .frame(height: 200, alignment: .bottom)
                        }
                        
                    }
                }
            }
            .searchable(text: $searchQuery, placement: .navigationBarDrawer(displayMode: .always))
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
    }
}
