//
//  MainTabView.swift
//  FaceBook_SwiftUI
//
//  Created by Apple on 11/07/2022.
//

import SwiftUI

struct MainTabView: View {
    @State var selectedIndex = 0
    var body: some View {
        TabView(selection: $selectedIndex) {
            HomeView().tabItem{
                VStack {
                    Image(systemName:"house.fill")
                    Text("Trang chủ")
                    
                }
            }.tag(0)
            
            FriendView().tabItem{
                VStack {
                    Image(systemName:"person.2")
                    Text("Bạn bè")
                }
            }.tag(1)
            
            WatchView().tabItem{
                VStack {
                    Image(systemName:"play.tv")
                    Text("Watch")
                }
                
            }.tag(2)
            
            PersonalView().tabItem{

                VStack {
                    Image(systemName:"person")
                    Text("Trang cá nhân")
                }
             
               
            }.tag(3)
            
            NotificationsView().tabItem{
                VStack {
                    Image(systemName:"bell")
                    Text("Thông báo")
                }
                
            }.tag(4)
            
//            MenuView().tabItem{
//
//                VStack {
//                    Image(systemName:"line.3.horizontal")
//                    Text("Menu")
//
//            }
           
//            }.tag(5)
//            
           
            
        }.tabViewStyle(DefaultTabViewStyle()	)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
