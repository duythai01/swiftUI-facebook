//
//  NotificationsView.swift
//  FaceBook_SwiftUI
//
//  Created by Apple on 11/07/2022.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ZStack{
            Color(.white).edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack{
                    HStack{
                        Text("Thông báo").font(.system(size: 25,weight: .bold))
                        Spacer()
                        Image(systemName: "magnifyingglass").font(.system(size:20)).padding(8).background(Color(#colorLiteral(red: 0.7910817726, green: 0.7910817726, blue: 0.7910817726, alpha: 1))).clipShape(Circle())
                    }.padding(.horizontal)
                    HStack{
                        Text("Trước đó").font(.system(size: 20,weight: .semibold))
                        Spacer()
                     
                    }.padding(.horizontal)
                    ForEach(0..<10){i in
                        NoticeView()
                    }
                    Spacer()
                }
            }
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
