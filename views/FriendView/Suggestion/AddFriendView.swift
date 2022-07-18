//
//  AddFriendView.swift
//  FaceBook_SwiftUI
//
//  Created by Apple on 13/07/2022.
//

import SwiftUI

struct AddFriendView: View {
    var body: some View {
        VStack{
            ForEach(0..<10){ i in
                SuggestFriendView()
            }
        }
    }
}


struct SuggestFriendView:View{
    var body: some View{
        HStack{
            Image("user").resizable().frame(width: 90, height: 90).scaledToFit().clipShape(Circle())
            
            VStack{
                HStack{
                    Text("Duy Thái").font(.system(size: 20,weight: .medium))
                    Spacer()
                   
                }
                
                HStack{
                    ZStack(alignment:.trailing){
                        Image("user1").resizable().frame(width: 20, height: 20).clipShape(Circle())
                        
                        Image("user2").resizable().frame(width: 20, height: 20).clipShape(Circle()).offset(x:14)
                        Image("user3").resizable().frame(width: 20, height: 20).clipShape(Circle()).offset(x:28)
                    }
                    Text("3 bạn chung").foregroundColor(Color(#colorLiteral(red: 0.5707744323, green: 0.5707744323, blue: 0.5707744323, alpha: 0.8470588235))).offset(x: 28)
                    Spacer()
                }
                
                HStack{
                    Button(action: {
                       
                        } ){
                            Text("Thêm bạn bè").font(.system(size: 14,weight: .semibold)).padding()
                        }.frame(width: 120, height: 35)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                    Button(action: {
                       
                        } ){
                            Text("Gỡ").font(.system(size: 14,weight: .semibold)).padding()
                        }.frame(width: 120, height: 35)
                            .foregroundColor(.black)
                            .background(Color(#colorLiteral(red: 0.7819909951, green: 0.7819909951, blue: 0.7819909951, alpha: 1)))
                            .cornerRadius(8)
                }
            }.padding()
            Spacer()
        }
    }
}
