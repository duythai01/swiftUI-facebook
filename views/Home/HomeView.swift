//
//  HomeView.swift
//  FaceBook_SwiftUI
//
//  Created by Apple on 11/07/2022.
//

import SwiftUI

struct HomeView: View {
    let primaryColor = Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    let secondColor = Color(#colorLiteral(red: 0.80192094, green: 0.80192094, blue: 0.80192094, alpha: 0.8470588235))
    var body: some View {
        ZStack{
            primaryColor.edgesIgnoringSafeArea(.all)
            VStack{
                ScrollView(showsIndicators: false){
                    HStack( ){
                        Text("facebook").font(.system(size: 26, weight: .bold, design: .serif)).foregroundColor(.blue).padding(4)
                        Spacer()
                        Image(systemName: "magnifyingglass").font(.system(size:20)).padding(8).background(secondColor).clipShape(Circle())
                        
                        Image(systemName: "message.fill").font(.system(size:20)).padding(8).background(secondColor).clipShape(Circle())
                    }.padding(2)
                    Rectangle().frame(width: UIScreen.main.bounds.width, height: 1).foregroundColor(secondColor)
                    
                    
                    //Menuheader
                    MenuHeader()
                    Rectangle().frame(width: UIScreen.main.bounds.width, height: 1).foregroundColor(secondColor)
                    //create post
                    CreatePost()
                
                    
                        
                    Rectangle().frame(width: UIScreen.main.bounds.width, height: 6).foregroundColor(secondColor)
                    
                    // MY Story
//                    MyStoryCard()
                    
                    // Story Feed
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            MyStoryCard()
                            ForEach(0..<5){
                                i in
                                StoryCard(imgName: "user", imgStory: "user2", userName: "DuyThai")
                            }
                        }.padding(.leading).padding(.vertical,5)
                        
                    }
                    
                   
                    
                    //Post
                    PostFeed()
                    
                   
                }
                Spacer()
//                Menu()
           
            }
            
          
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
