//
//  LoginView.swift
//  GoodJob
//
//  Created by Dimash Nsanbaev on 9/8/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
            ZStack{
                VStack{
                    ZStack{
                        
                        Color(red: 135/255, green: 116/255, blue: 1)
                            .frame(width:UIScreen.main.bounds.size.width,height: UIScreen.main.bounds.size.height/2)
                        Image("logo")
                            .resizable()
                            .frame(width: 130, height: 150)
                            .padding(.bottom,80)
                        Spacer()
                        Image("logoCity")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.size.width, height: 300)
                            .padding(.top,148)

                    }
                    Spacer()
                }
                
                VStack{
                    ZStack{
                        Color(.white)
                            .frame(width: 350,height: 400)
                            .cornerRadius(10)
                        VStack{
                            HStack{
                                Text("Регестрировать")
                                Text("Войти")

                            }
                            Divider()
                            
                        }
                    }
                    
                    
                }
                
                .padding(.top,100)
                
            }
            .ignoresSafeArea()

        }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
