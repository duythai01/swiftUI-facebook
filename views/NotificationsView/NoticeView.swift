//
//  NoticeView.swift
//  FaceBook_SwiftUI
//
//  Created by Apple on 13/07/2022.
//

import SwiftUI

struct NoticeView: View {
    var body: some View {
        HStack{
            ZStack(alignment: .bottom){
                Image("thongbao").resizable().frame(width: 70, height: 70).scaledToFit().clipShape(Circle()).overlay(Circle().stroke(Color.gray.opacity(0.3),lineWidth: 3))
                Image(systemName: "person.3.fill").font(.system(size:14)).padding(8).background(Color.blue).clipShape(Circle()).foregroundColor(.white).offset(x:25)
            }
            
            VStack{
                HStack{
                    Text("ưqwqrqweqwrqweqweqwdasfasfasfafasfasfasfasfasfasfasfasfasfasfasfasfasfasfasfasfasfasfasfasfaf").font(.system(size: 16)).lineLimit(3)
                   
                }.padding(.leading)
                
            }
            Spacer()
            Text("...").font(.system(size: 30,weight: .bold)).padding()
        }.background(Color.blue.opacity(0.1))
    }
}

