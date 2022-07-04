//
//  idolView.swift
//  kopcard
//
//  Created by Syifa Mashadi on 02/07/22.
//

import SwiftUI

struct IdolPage {
    @State var idolPict: String
    @State var nameIdol: String
}

private let idolPage = [
    IdolPage(idolPict: "bts", nameIdol: "BTS"),
    IdolPage(idolPict: "exo", nameIdol: "EXO"),
    IdolPage(idolPict: "itzy", nameIdol: "ITZY"),
    IdolPage(idolPict: "ive", nameIdol: "IVE"),
    IdolPage(idolPict: "nct", nameIdol: "NCT"),
    IdolPage(idolPict: "seventeen", nameIdol: "SEVENTEEN"),
    IdolPage(idolPict: "snsd", nameIdol: "SNSD"),
    IdolPage(idolPict: "twice", nameIdol: "TWICE")
]
struct idolView: View {
    @Binding var showidolView: Bool
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("BGColor")
                    .ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 10){
                        ForEach(idolPage.indices, id:\.self) { it in
                            HStack {
                                Button {
                                    
                                } label: {
                                    ZStack {
                                        Image(idolPage[it].idolPict)
                                            .resizable()
                                            .frame(width: 350, height: 150)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                            .shadow(color: .gray, radius: 5)
                                        Text(idolPage[it].nameIdol)
                                            .fontWeight(.bold)
                                            .frame(width: 350, height: 50)
                                            .background(.white)
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
//                                Button {
//
//                                } label: {
//                                    ZStack {
//                                        Image(idolPage[it].idolPict)
//                                            .resizable()
//                                            .frame(width: 150, height: 150)
//                                            .clipShape(RoundedRectangle(cornerRadius: 10))
//                                            .shadow(color: .gray, radius: 5)
//                                        Text(idolPage[it].nameIdol)
//                                            .fontWeight(.bold)
//                                            .frame(width: 150, height: 75)
//                                            .background(.white)
//                                            .cornerRadius(10)
//                                            .offset(y: 63)
//                                    }
//                                    .foregroundColor(.black)
//                                }
//                                .padding()
                            }
                        }
                    }
                    
                }
            }
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        // cancel button
                        showidolView.toggle()
                        
                    } label: {
                        Text("Cancel")
                            .foregroundColor(.red)
                    }
                }
                ToolbarItem(placement: .primaryAction) {
                    Button {
                        // save button
                        showidolView.toggle()
                        
                    } label: {
                        Text("Save")
                            .foregroundColor(.blue)
                    }
                }
            }
            .navigationTitle("Add New Idol")
        }
        
    }
}

struct idolView_Previews: PreviewProvider {
    @State static var showidolView: Bool = false
    static var previews: some View {
        idolView(showidolView: $showidolView)
    }
}
