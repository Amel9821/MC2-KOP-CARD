//
//  EventView.swift
//  kopcard
//
//  Created by Syifa Mashadi on 01/07/22.
//

import SwiftUI

struct EventPage {
    var gambar: String
    var tulisan: String
}

private let eventPage = [
    EventPage(gambar: "eventp1", tulisan: """
                   THE BOYZ WORLD TOUR: THE B-ZONE
                     July 9, 2022
                Tennis Indoor Stadium
                """),
    EventPage(gambar: "eventp2", tulisan: """
                  EPIK HIGH IS HERE TOUR 2022
                    July 16, 2022
                The Kasablanka Hall
                """),
    EventPage(gambar: "eventp3", tulisan: """
                (G)I-DLE WORLD TOUR [JUST ME ( )I-DLE]
                          August 27, 2022
                       The Kasablanka Hall
                """),
    EventPage(gambar: "eventp4", tulisan: """
                SEVENTEEN WORLD TOUR: BE THE SUN
                        October 10-11, 2022
                           ICE BSD Hall
                """)
]

struct EventView: View {
    @State var searchQuery: String = ""
    @Binding var showEvent: Bool
    var eventImage: [String] = []
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical) {
                VStack{
                    ForEach(0..<eventPage.count,id:\.self) { it in
                        Button {
                            
                        } label: {
                            ZStack {
                                Image(eventPage[it].gambar)
                                    .resizable()
                                    .frame(width: 357, height: 171)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .shadow(color: .gray, radius: 5)
                                Text(eventPage[it].tulisan).font(.system(size: 12))
                                    .fontWeight(.bold)
                                    .frame(width: 351, height: 50)
                                    .background(.gray.opacity(0.8))
                                    .cornerRadius(10)
                                    .offset(y: 63)
                                
                            }
                            .foregroundColor(.black)
                        }
                        //                                    RoundedRectangle(cornerRadius: 10)
                        //                                        .fill(.gray)
                        //                                        .frame(width: 150, height: 200)
                        //                                        .shadow(color: .gray, radius: 5)
                        
                        .padding()
                        
                        
                    }
                }
                
            }
            //        ScrollView {
            //            VStack {
            //
            //                ForEach(0 ..< 5) { item in
            //                    ZStack{
            //                        Image("theboyz")
            //                            .resizable()
            //                            .frame(width: 357, height: 171)
            //                            .clipShape(RoundedRectangle(cornerRadius: 10))
            //                        //               .contrast(0.9)
            //                        ZStack{
            //                            RoundedRectangle(cornerRadius: 10)
            //                                .fill(.black)
            //                                .frame(width: 357, height: 220)
            //                                .opacity(0.1)
            //                            Image("NCTback")
            //                                .resizable()
            //                                .frame(width: 357, height: 220, alignment: .center)
            //                            Text(
            //    """
            //    NCT 127 Comeback
            //    4 June 2022
            //    Coffe Shop Menteng
            //    """
            //                            )
            //                            .foregroundColor(.white)
            //                            .fontWeight(.bold)
            //                            .multilineTextAlignment(.center)
            //                            .padding()
            //                            .frame(height: 200, alignment: .bottom)
            //                        }
            //
            //                    }
            //                }
            //            }}
            .navigationTitle("Event")
//            .toolbar {
//                ToolbarItem(placement: .cancellationAction) {
//                    Button {
//                        showEvent.toggle()
//                    }
//                    label : {
//                        Text("Back")
//                            .foregroundColor(.blue)
//                    }
//                }
//            }
        }
        .searchable(text: $searchQuery, placement: .navigationBarDrawer(displayMode: .always))
//        .navigationTitle("Event")
            
        }
    }


struct EventView_Previews: PreviewProvider {
    @State static var showEvent: Bool = false
    static var previews: some View {
        EventView(showEvent: $showEvent)
    }
}
