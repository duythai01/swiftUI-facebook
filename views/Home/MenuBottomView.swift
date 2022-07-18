//
//  MenuBottomView.swift
//  FaceBook_SwiftUI
//
//  Created by Apple on 09/07/2022.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        HStack() {
            VStack {
                Image(systemName:"house.fill")
                Text("Trang chủ").font(.system(size: 10))
                
            }.foregroundColor(.blue)
        
            
            Spacer()
            VStack {
                Image(systemName:"person.2")
                Text("Bạn bè").font(.system(size: 10))
            }
            Spacer()
            VStack {
                Image(systemName:"play.tv")
                Text("Watch").font(.system(size: 10))
            }
            Spacer()
            VStack {
                Image(systemName:"person").clipShape(Circle()).overlay(Circle().stroke())
                Text("Trang cá nhân").font(.system(size: 10))
            }
         
            VStack {
                Image(systemName:"bell")
                Text("Thông báo").font(.system(size: 10))
            }
            Spacer()
            VStack {
                Image(systemName:"line.3.horizontal").resizable().frame(width: 25, height: 19)
                Text("Menu").font(.system(size: 10))
            }
        }.font(.system(size: 20)).padding(.horizontal)
       
    }
}

