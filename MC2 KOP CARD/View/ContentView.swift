////
////  ContentView.swift
////  MC2 KOP CARD
////
////  Created by Amalia . on 03/07/22.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    @AppStorage("isDoneOnboarding") private var isDoneOnboarding: Bool = false
//    //@AppStorage("isDoneLogin") private var isDoneLogin: Bool = false
//    
//    var body: some View {
//        if isDoneOnboarding {
//            Dashboard(showEvent: .constant(true), showDashboard: .constant(true), username: .constant("TEST"), name: .constant("TEST"), Bio: .constant("TEST"))
//        } else {
//            OnBoardingPage()
//        }
////        if isDoneLogin {
////            DashboardAfter(username: .constant("TEST"), showDashboardAfterLogin: .constant(true))
////        } else {
////            LoginViewHaveAccount(email: .constant("TEST"), password: .constant("TEST"), username: .constant("TEST"))
////        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
