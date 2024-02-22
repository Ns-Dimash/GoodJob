//
//  LoginView.swift
//  GoodJob
//
//  Created by Dimash Nsanbaev on 9/8/23.
//

import SwiftUI
import iPhoneNumberField


struct LoginView: View {
    
    var body: some View {
        VStack{
            
            Text("X")
                .foregroundColor( Color(red: 0, green: 135/255, blue: 0))
                .font(.system(size: 250))
        
            VStack(spacing: -20){
                NavigationLink {
                    OnlyLoginView()
                    
                        .navigationBarBackButtonHidden()
                } label: {
                    ZStack{
//                        Color(red: 30/255, green: 35/255, blue: 44/255)
                        Color(red: 0, green: 135/255, blue: 0)
                            .frame(width: 330,height: 56)
                            .cornerRadius(8)
                        Text("Логин")
                            .foregroundColor(.white)
                    }
                    .padding()
                    
                    
                }
                
                NavigationLink {
                    VerificationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    ZStack{
                        Text("Регистрация")
                            .foregroundColor( Color(red: 0, green: 135/255, blue: 0))
                            .padding(.horizontal,115)
                            .padding(.vertical)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color(red: 0, green: 135/255, blue: 0), lineWidth: 2)
                            )
                    }
                    .padding()
                    
                    
                }
                
            }
        }
        
        
    }
    
    
    
    //    var register:some View{
    //
    //        VStack(spacing: 30){
    //            TextField("name@example.com", text: $email)
    //                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
    //                .background(Color.white)
    //                .cornerRadius(5)
    //                .overlay(
    //                    RoundedRectangle(cornerRadius: 5)
    //                        .stroke(Color.gray, lineWidth: 0.5)
    //                )
    //
    //            iPhoneNumberField("Phone Number", text: $number)
    //                .flagHidden(false)
    //                .flagSelectable(true)
    //                .prefixHidden(false)
    //
    //                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
    //                .overlay(
    //                    RoundedRectangle(cornerRadius: 5)
    //                        .stroke(Color.gray, lineWidth: 0.5)
    //                )
    //
    //
    //            NavigationLink {
    //               VerificationView()
    //                    .navigationBarBackButtonHidden()
    //            } label: {
    //                ZStack{
    //                    Color(red: 135/255, green: 116/255, blue: 1)
    //                        .frame(width: 320,height: 45)
    //                        .cornerRadius(10)
    //                    Text("Регестрировать")
    //                        .foregroundColor(.white)
    //                }
    //                .padding(.bottom,40)
    //
    //
    //            }
    //        }
    //        .padding()
    //
    //
    //    }
    
}







struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
