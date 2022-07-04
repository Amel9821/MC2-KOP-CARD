//
 //  TopPoints.swift
 //  MC2 KOP CARD
 //
 //  Created by Brenda Nathania Passandaran on 02/07/22.
 //

 import SwiftUI

struct TopView {
    var imageTop: String
    var teksTop: String
    var pointTop: String
}

private let topView = [
    TopView(imageTop: "aecute", teksTop: "aecute", pointTop: "3,000 points"),
    TopView(imageTop: "naeyon", teksTop: "twnayeon", pointTop: "3,000 points"),
    TopView(imageTop: "poin3", teksTop: "docute", pointTop: "2,700 points"),
    TopView(imageTop: "poin4", teksTop: "baekbaek", pointTop: "2,550 points"),
    TopView(imageTop: "poin5", teksTop: "rvcake", pointTop: "2,400 points"),
    TopView(imageTop: "poin6", teksTop: "annso", pointTop: "2,000 points"),
    TopView(imageTop: "poin7", teksTop: "svtyou", pointTop: "1,950 points"),
    TopView(imageTop: "poin8", teksTop: "luvies", pointTop: "1,600 points")
]
 struct TopPoints: View {
     @Binding var showTopPoints: Bool
     var body: some View {
         NavigationView{
         VStack{

//                     Text("Top Points")
//                         .font(.system(size: 25)).bold()
//
//                         .offset(x: -100, y: 40)

                     ScrollView{
                         VStack(spacing: 20) {
                             ForEach(0..<topView.count,id:\.self) {it in

                                 HStack{
                                     Image(topView[it].imageTop)
                                         .resizable()
                                         .frame(width: 50, height: 50)
                                         .offset(x: 170, y: 0)
                                     

                                     VStack{
                                         Text(topView[it].teksTop)
                                             .frame(width: 450)
                                             .offset(x: 0,y: -2)
                                             .font(.system(size: 13).bold())
                                             


                                         Text(topView[it].pointTop)
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
         .navigationTitle("Top Points")
         .toolbar {
             ToolbarItem(placement: .cancellationAction) {
                 Button {
                     showTopPoints.toggle()
                 } label: {
                     Text("Back")
                         .foregroundColor(.blue)
                 }
             }
         }
         }
         

     }
 }

 struct TopPoints_Previews: PreviewProvider {
     @State static var showTopPoints = false
     static var previews: some View {
         TopPoints(showTopPoints: $showTopPoints)
     }
 }

