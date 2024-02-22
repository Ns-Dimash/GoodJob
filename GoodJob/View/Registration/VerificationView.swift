//
//  VerificationView.swift
//  GoodJob
//
//  Created by Dimash Nsanbaev on 9/13/23.
//

import SwiftUI
import OtpView_SwiftUI

struct VerificationView: View {
    @State var otpCode: String = ""
    @State var otpCodeLength: Int = 4
    @State var textColor =  Color(red: 0, green: 135/255, blue: 0)
    @State var textSize = CGFloat(35)
    @Environment(\.dismiss) var dismiss


    var body: some View {
        
        VStack{
            ZStack{
                Color(red: 0, green: 135/255, blue: 0)                    .frame(width:UIScreen.main.bounds.size.width,height: UIScreen.main.bounds.size.height/4.5)
                    .ignoresSafeArea()
                
                VStack(alignment: .leading,spacing: 20){
                    
                    
                    Button {
                           dismiss()
                    } label: {
                        Image(systemName:"chevron.backward")
                        .foregroundColor(.white)
                        .font(.system(size: 24))

                    }
                        
                    Text("Проверка телефона")
                        .foregroundColor(.white)
                        .font(.system(size: 34))
                        .fontWeight(.bold)
                    
                    Text("Введите свой OTP-код здесь")
                        .foregroundColor(.white)
                        .font(.system(size: 17))
                }
                .padding(.bottom,60)
                .padding(.trailing,30)
                .frame(width:UIScreen.main.bounds.size.width,height: UIScreen.main.bounds.size.height/4.5)
               
                
            }
            .frame(width:UIScreen.main.bounds.size.width,height: UIScreen.main.bounds.size.height/4.5)
            
            HStack {
                //OTPTextField { otp, completionHandler in }
                OtpView_SwiftUI(otpCode: $otpCode, otpCodeLength: otpCodeLength, textColor: textColor, textSize: textSize)
            }
            .padding(.top,50)
            .frame(width: 320,height: 100)
            
//            
//            NavigationLink {
////               ProfileView()
//                EmptyView()
//                    .navigationBarBackButtonHidden()
//            } label: {
//                ZStack{
//                    Color(red: 30/255, green: 35/255, blue: 44/255)
//                        .frame(width: 320,height: 45)
//                        .cornerRadius(10)
//                    Text("Проверить сейчас")
//                        .foregroundColor(.white)
//                        
//                }
//                .padding(.top,70)
//
//                
//            }
            
            NavigationLink {
//                ProfileView()
                               EmptyView()
            } label: {
                ZStack{
                    Color(red: 0, green: 135/255, blue: 0)                        .frame(width: 330,height: 56)
                        .cornerRadius(8)
                    Text("Пройти")
                        .foregroundColor(.white)
                }
                .padding()
                
                
            }
            
            Spacer()
            
        }
        
    }
}

struct VerificationView_Previews: PreviewProvider {
    static var previews: some View {
        VerificationView()
    }
}
