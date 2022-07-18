//
//  CreatePostAndMenuHeader.swift
//  FaceBook_SwiftUI
//
//  Created by Apple on 09/07/2022.
//

import SwiftUI
struct MenuHeader: View{
    @State var textMenuHeader = Color(#colorLiteral(red: 0.6275258802, green: 0.6275258802, blue: 0.6275258802, alpha: 0.8470588235))
    var body: some View{
        HStack(){
            Spacer()
            VStack{
                Text("Bảng feed của bạn").font(.system(size: 16,weight: .semibold )).foregroundColor(.blue).onTapGesture {
                    textMenuHeader = Color(#colorLiteral(red: 0.02124349959, green: 0.4784673452, blue: 0.9997053742, alpha: 1))
                }
//                           Rectangle().frame(width: UIScreen.main.bounds.width/2, height: 1).foregroundColor(secondColor)
                
            }
            
            Spacer()
            Text("Yêu thích").font(.system(size: 16, weight: .semibold)).foregroundColor(textMenuHeader)
            Spacer()
            Text("Gần đây").font(.system(size: 16, weight: .semibold)).foregroundColor(textMenuHeader)
            Spacer()
            Image(systemName: "slider.horizontal.3").foregroundColor(textMenuHeader)
            Spacer()
        }
    }
}

struct CreatePost: View{
    var body: some View{
        HStack{
            Image("user").resizable().frame(width: 50, height: 50).clipShape(Circle()).padding(.horizontal,8)
                Text("Bạn đang nghĩ gì ?").font(.system(size:16)).foregroundColor(Color(#colorLiteral(red: 0.253856541, green: 0.253856541, blue: 0.253856541, alpha: 1)))
                Spacer()
        }
    }
}
