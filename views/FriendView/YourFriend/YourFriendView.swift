//
//  YourFriendView.swift
//  FaceBook_SwiftUI
//
//  Created by Apple on 12/07/2022.
//

import SwiftUI

struct YourFriendView: View {
    @Environment(\.presentationMode) var presentationmode
    @State var textFieldText:String = ""
    var body: some View {
        

        ZStack {
            Color(.white).edgesIgnoringSafeArea(.all)
            VStack {
                HStack{
                    Button(action: {
                        presentationmode.wrappedValue.dismiss()
                    }){
                        Image(systemName: "chevron.backward")
                    }
                    
                    Spacer()
                    Text("Bạn bè").font(.system(size: 20,weight: .semibold))
                    Spacer()
                    Image(systemName: "magnifyingglass").font(.system(size:20)).padding(8)
                }.padding(.horizontal)
                
                
                ScrollView ( showsIndicators: false){
                    VStack(){
                        HStack {
                            Image(systemName: "magnifyingglass")
                            TextField("Tìm kiếm bạn bè", text: $textFieldText)
                        }.padding()
                            .background(Color.gray.opacity(0.3)).cornerRadius(30)
                        HStack {
                            Text("999 người bạn").font(.system(size: 20,weight: .bold))
                            Spacer()
                            Text("Sắp xếp").font(.system(size: 20)).foregroundColor(.blue)
                        }
                        
                    }
                    YourFriendList()
                }
            }.padding(.horizontal)
            Spacer()
           
        }.navigationBarHidden(true)
    }
}

struct YourFriendView_Previews: PreviewProvider {
    static var previews: some View {
        YourFriendView()
    }
}
