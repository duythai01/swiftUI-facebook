//
//  PostView.swift
//  FaceBook_SwiftUI
//
//  Created by Apple on 09/07/2022.
//

import SwiftUI

struct Post: View{
    let secondColor = Color(#colorLiteral(red: 0.80192094, green: 0.80192094, blue: 0.80192094, alpha: 0.8470588235))

    var body: some View{
        VStack{
            Rectangle().frame(width: UIScreen.main.bounds.width, height: 7).foregroundColor(secondColor)
            HStack{
                Image("user").resizable().frame(width: 40, height: 40).clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 0){
                    HStack{
                        Text("Duy Thai").font(.system(size: 14, weight: .semibold))
                        Image(systemName: "checkmark").font(.system(size: 8,weight: .bold)).padding(2).background(Color.blue).clipShape(Circle())
                    }
                    
                    HStack{
                        Text("1 phút trước")
                        Circle().frame(width: 2, height: 2)
                        
                        Image(systemName: "globe")
                    }.font(.system(size: 13)).foregroundColor(Color(#colorLiteral(red: 0.4193256811, green: 0.4193256811, blue: 0.4193256811, alpha: 1)))
                }
                Spacer()
                HStack{
                    Image(systemName: "ellipsis")
                    Text("X").font(.system(size: 20)).padding(2)
                }
               
            }.padding(.horizontal)
            
            Text("Trong tầm giá 7tr5 đổ lại.thì nên chọn 1 con tầm trung mới (Redmi K40) hay 1 con flagship cũ (Galaxy note 10) ạ.").padding(.horizontal).font(.system(size: 14))
            
            Image("img_post").resizable().scaledToFit()
            HStack{
                HStack{
                    ZStack(alignment:.trailing){
                        Image("like").resizable().frame(width: 18, height: 18)
                        
                        Image("love").resizable().frame(width: 18, height: 18).offset(x:14)
                        Image("care").resizable().frame(width: 18, height: 18).offset(x:28)
                    }
                    Text("99").offset(x: 28)
                }
                
                Spacer()
                
                HStack{
                    Text("22 bình luận")
                    Text("2 lượt chia sẻ")
                }
            }.padding(.horizontal).foregroundColor(Color(#colorLiteral(red: 0.4193256811, green: 0.4193256811, blue: 0.4193256811, alpha: 1) )).font(.system(size: 13))
            
            Rectangle().frame(width: UIScreen.main.bounds.width - 15, height: 1).foregroundColor(secondColor)
            
            HStack{
                HStack{
                    Image(systemName: "hand.thumbsup").resizable().frame(width: 18, height: 18)
                    Text("Thích")
                }
                Spacer()
                HStack{
                    Image(systemName: "bubble.middle.bottom").resizable().frame(width: 18, height: 18)
                    Text("Bình luận")
                }
                Spacer()
                HStack{
                    Image(systemName: "arrowshape.turn.up.right").resizable().frame(width: 18, height: 18)
                    Text("Chia sẻ")
                }
            }.padding(.horizontal).foregroundColor(Color(#colorLiteral(red: 0.4193256811, green: 0.4193256811, blue: 0.4193256811, alpha: 1) )).font(.system(size: 16))
            
          
          
        }
        }
       
}
struct PostFeed:View{
    var body: some View{
        VStack{
            ForEach(1..<5){
                i in
                Post()
            }
        }
    }
}
