//
//  FriendView.swift
//  FaceBook_SwiftUI
//
//  Created by Apple on 11/07/2022.
//

import SwiftUI

struct FriendView: View {
    @State var settingsLinkSelected = false
    let primaryColor = Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    let secondColor = Color(#colorLiteral(red: 0.80192094, green: 0.80192094, blue: 0.80192094, alpha: 0.8470588235))
 
    var body: some View {
        ZStack {
            primaryColor.edgesIgnoringSafeArea(.all)
            NavigationView {
                VStack{
                    HStack{
                        Text("Bạn bè").font(.system(size: 25,weight: .bold))
                        Spacer()
                        Image(systemName: "magnifyingglass").font(.system(size:20)).padding(8).background(Color(#colorLiteral(red: 0.6866960034, green: 0.6866960034, blue: 0.6866960034, alpha: 1))).clipShape(Circle())
                    }.padding(.horizontal)
                    
                    ScrollView{
                        HStack{
                           
                            NavigationLink(destination: SuggestionView()){
                                Text("Gợi ý").font(.system(size: 14,weight: .semibold)).padding().frame(width: 80, height: 38).foregroundColor(.black)
                                        .background((Color(#colorLiteral(red: 0.7819909951, green: 0.7819909951, blue: 0.7819909951, alpha: 1))))
                                        .cornerRadius(40)
                            }
                       
                            
                            
                            
                            NavigationLink(destination: YourFriendView()){
                                Text("Bạn bè").font(.system(size: 14,weight: .semibold)).padding()
                                    .frame(width: 80, height: 38)
                                        .foregroundColor(.black)
                                        .background((Color(#colorLiteral(red: 0.7819909951, green: 0.7819909951, blue: 0.7819909951, alpha: 1))))
                                        .cornerRadius(40)
                            }
                            
                            
                           
            
                            Spacer()
                        }.padding(.horizontal,2)
                        Rectangle().frame(width: UIScreen.main.bounds.width-15, height: 1).foregroundColor(secondColor)
                        
                       
                        FriendRequestView()
               
                       
                        
                    }.padding(.horizontal)
                    Spacer()
                }.navigationBarHidden(true)
            }
        }
    }
}


struct FriendView_Previews: PreviewProvider {
    static var previews: some View {
        FriendView()
    }
}
