//
//  Activity.swift
//  kopcard
//
//  Created by Syifa Mashadi on 25/06/22.
//

import SwiftUI

struct Activity: View {
    var body: some View {
        NavigationView{
            List{
                Text("Yesterday")
                    .foregroundColor(.black)
                    .font(.system(size: 22, weight: .bold, design: .default))
                    .listRowSeparator(.hidden)
                HStack{
                    Image("profileP")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("**yourfriend** connected with you at Renjun Birthday’s Event.")
                        .font(.system(size: 17))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .listRowSeparator(.hidden)
                HStack{
                    Image("eventPoint")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("**You** got 100 points by attending Renjun’s Birthday Event.")
                        .font(.system(size: 17))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .listRowSeparator(.hidden)
                Divider().frame(width: 350).background(Color.black)
                Text("This Week")
                    .foregroundColor(.black)
                    .font(.system(size: 22, weight: .bold, design: .default))
                    .listRowSeparator(.hidden)
                HStack{
                    Image("profileP")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("**friendnumber** connected with you at Kyungsoo’s Birthday Event.")
                        .font(.system(size: 17))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .listRowSeparator(.hidden)
                HStack{
                    Image("eventPoint")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("**You** got 150 points by attending Kyungsoo’s Birthday Event. ")
                        .font(.system(size: 17))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .listRowSeparator(.hidden)
                Divider().frame(width: 350).background(Color.black)
                Text("This Month")
                    .foregroundColor(.black)
                    .font(.system(size: 22, weight: .bold, design: .default))
                    .listRowSeparator(.hidden)
                HStack{
                    Image("exchangePoint")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("**You** exchange 150 points to open fancard fitur.")
                        .font(.system(size: 17))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .listRowSeparator(.hidden)
                
            }.listStyle(.plain)
                .navigationTitle("Activity")
//            change the color: https://codewithchris.com/swiftui/swiftui-color/
        }
    }
}

struct Activity_Previews: PreviewProvider {
    static var previews: some View {
        Activity()
    }
}
