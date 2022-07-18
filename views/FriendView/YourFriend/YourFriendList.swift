//
//  YourFriendList.swift
//  FaceBook_SwiftUI
//
//  Created by Apple on 13/07/2022.
//

import SwiftUI

struct YourFriendList: View {
    var body: some View {
        ForEach(0..<10){i in
            Friend()
        }
    }
}

struct Friend: View {
    var body: some View {
        HStack{
            Image("user").resizable().frame(width: 70, height: 70).scaledToFit().clipShape(Circle())
            
            VStack{
                HStack{
                    Text("Duy Thái").font(.system(size: 20,weight: .medium))
                    Spacer()
                   
                }
                
                HStack{
                    Text("3 bạn chung").foregroundColor(Color(#colorLiteral(red: 0.5707744323, green: 0.5707744323, blue: 0.5707744323, alpha: 0.8470588235)))
                    Spacer()
                }
                
                
            }
            Spacer()
            Text("...").font(.system(size: 30,weight: .bold))
        }
    }
}


