//
//  TabBar.swift
//  MC2 KOP CARD
//
//  Created by Amalia . on 04/07/22.
//

import SwiftUI

struct TabBar: View {
    @State var showDashboard = false
    @State var showEvent = false
    @State var Bio = ""
    @Binding var username: String
    @Binding var name: String
    @State var showDashboardAfterLogin = false
    @Binding var TabBar: Bool
 //   @Binding var imageSelected: UIImage!
    
    var body: some View {
        TabView{
            if username != "" {
                DashboardAfterLogin(showDashboardAfterLogin: $showDashboardAfterLogin, username: $username)
                    .tabItem{
                        Image(systemName: "house")
                        Text("Home")
//                    Label("Home", image: "house")
                }}
            else {
                        DashboardUtama(showDashboard: $showDashboard)
                            .tabItem{
                                Image(systemName: "house")
                                Text("Home")
            }
            }
            EventView(showEvent: $showEvent)
            // NavigationLink(destination: EventView(), isActive: self.$showEvent, label:)
                .tabItem{

                    Image(systemName: "calendar")
                    Text("Events")
                }

            ProfileCard(Bio: Bio, name: $name, username: $username)
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}

//struct TabBar_Previews: PreviewProvider {
//    @State static var showTabBar = false
//    @State static var username = ""
//    @State static var name = ""
//    static var previews: some View {
//        TabBar(username: $username, name: $name, TabBar: $showTabBar, imageSelected: $imageSelected)
//    }
//}
