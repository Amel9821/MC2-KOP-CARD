//
//  MC2_KOP_CARDApp.swift
//  MC2 KOP CARD
//
//  Created by Amalia . on 26/06/22.
//

import SwiftUI

@main
struct MC2_KOP_CARDApp: App {
//    @State var showEvent: Bool = false
//    @State var showDashboard = false
//    @State var username = ""
//    @State var name = ""
//    @State var Bio = ""
    @State var showTabBar = false
    var body: some Scene {
        WindowGroup {
            OnBoardingPage()
            //TabBar(TabBar: $showTabBar)
//            Dashboard(showEvent: $showEvent, showDashboard: $showDashboard, username: $username)
            //ContentView()
            //ProfileCard(Bio: Bio, name: $name, username: $username)
        }
    }
}
