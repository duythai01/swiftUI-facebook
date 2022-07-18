//
//  StoryView.swift
//  FaceBook_SwiftUI
//
//  Created by Apple on 09/07/2022.
//

import SwiftUI

struct MyStoryCard: View{
    var body: some View{
        ZStack(alignment: .top){
            RoundedRectangle(cornerRadius: 15).frame(width: 100, height: 170).foregroundColor(Color(#colorLiteral(red: 0.9473939089, green: 0.9473939089, blue: 0.9473939089, alpha: 1)))
            
            ZStack(alignment: .bottom){
                Image("user").resizable().frame(width: 100, height: 110).scaledToFit().clipShape(RoundedRectangle(cornerRadius: 15))
                
                VStack(spacing:0){
                    
                    Image(systemName: "plus").foregroundColor(.white).padding(5).background(.blue).clipShape(Circle()).font(.system(size: 20,weight: .bold)).overlay(Circle().stroke(Color(#colorLiteral(red: 0.9473939089, green: 0.9473939089, blue: 0.9473939089, alpha: 1)),lineWidth: 3))
                    
                    Text("Tạo tin").font(.system(size: 14,weight: .semibold)).padding(.top)
                }.offset(y:42)
            }
            
            
            
        }
    }
}

struct StoryCard: View{
    let imgName: String
    let imgStory: String
    let userName: String
    
    var body: some View{
        ZStack(alignment: .leading){
            Image(imgStory).frame(width: 100, height: 170).scaledToFit().clipShape(RoundedRectangle(cornerRadius: 15))
            
            VStack(alignment: .leading, spacing: 100){
                Image(imgName).resizable().frame(width: 35, height: 35).clipShape(Circle()).overlay(Circle().stroke(Color.blue,lineWidth: 4))
                Text(userName).font(.system(size: 16, weight: .semibold)).foregroundColor(.white)
            }.padding(.leading,8)
        }
    }
}
