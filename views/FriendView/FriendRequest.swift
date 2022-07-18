//
//  SuggestionView.swift
//  FaceBook_SwiftUI
//
//  Created by Apple on 12/07/2022.
//

import SwiftUI

struct FriendRequestView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Lời mời kết bạn").font(.system(size: 20,weight: .bold))
                Spacer()
                Text("Xem tất cả").font(.system( size: 18,weight: .light)).foregroundColor(.blue)
            }.padding(.horizontal)
            
            
            ForEach(0..<10){i in
                RequestView()
            }
            
            
        }
    }
}


struct RequestView:View{
    var body: some View{
        HStack{
            Image("user").resizable().frame(width: 90, height: 90).scaledToFit().clipShape(Circle())
            
            VStack{
                HStack{
                    Text("Duy Thái").font(.system(size: 20,weight: .medium))
                    Spacer()
                    Text("2 giờ trước").font(.system(size: 14)).foregroundColor(Color(#colorLiteral(red: 0.5707744323, green: 0.5707744323, blue: 0.5707744323, alpha: 0.8470588235)))
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
                            Text("Đồng ý").font(.system(size: 14,weight: .semibold)).padding()
                        }.frame(width: 120, height: 35)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                    Button(action: {
                       
                        } ){
                            Text("Từ chối").font(.system(size: 14,weight: .semibold)).padding()
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
