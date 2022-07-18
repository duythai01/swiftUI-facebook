//
//  SuggestionView.swift
//  FaceBook_SwiftUI
//
//  Created by Apple on 12/07/2022.
//

import SwiftUI

struct SuggestionView: View {
    @Environment(\.presentationMode) var presentationmode
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
                    Text("Gợi ý").font(.system(size: 20,weight: .semibold))
                    Spacer()
                    Image(systemName: "magnifyingglass").font(.system(size:20)).padding(8)
                }
                
                
                ScrollView ( showsIndicators: false){
                    VStack(){
                        HStack {
                            Text("Những người bạn có thể biết").font(.system(size: 20,weight: .bold))
                            Spacer()
                        }
                        
                        AddFriendView()
                    }
                }
            }.padding()
            Spacer()
           
        }.navigationBarHidden(true)
    }
}

struct SuggestionView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestionView()
    }
}

struct VD : View{
    var body: some View{
        Text("Hellp")
    }
}
