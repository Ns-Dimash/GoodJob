//
//  LoginView.swift
//  GoodJob
//
//  Created by Dimash Nsanbaev on 9/8/23.
//

import SwiftUI
import iPhoneNumberField


struct LoginView: View {
    @State private var selectedTab = "Регистрировать"
    @State private var dotOffset: CGFloat = 0
    @State var number = ""
    @State var email = ""
    
    
    
    var body: some View {
        ZStack{
            Color(.gray)
                .opacity(0.1)
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
                    inView
                }
                
                
            }
            
            .padding(.top,100)
            .frame(width: 350,height: 400)
        }
        .ignoresSafeArea()
        
    }
    
    var inView:some View{
        VStack {
            HStack(spacing: 50) {
                Button("Регистрировать") {
                    withAnimation {
                        selectedTab = "Регистрировать"
                        dotOffset = 0
                    }
                }
                .buttonStyle(TabButtonStyle(isSelected: selectedTab == "Регистрировать"))
                
                Button("Войти") {
                    withAnimation {
                        selectedTab = "Войти"
                        dotOffset = 1
                    }
                }
                .buttonStyle(TabButtonStyle(isSelected: selectedTab == "Войти"))
            }
            .padding(.top,40)
            .animation(.easeInOut, value: 0.2)
            
            // Add the dot under the selected button
            GeometryReader { geo in
                RoundedRectangle(cornerRadius: 6)
                    .frame(width: geo.size.width / 5, height: 7)
                    .foregroundColor(Color(red: 135/255, green: 116/255, blue: 225/255))
                    .offset(x: geo.size.width / 1.5 * dotOffset)
                    .animation(.easeInOut, value: 0.2)
            }
            .padding(.leading,80)
            .frame(height: 4)
            
            
            Divider()
                .padding(.top,20)
            
            
            
            
            
            
            
            if selectedTab == "Регистрировать" {
                register
            } else {
                Text("Это вкладка 'Войти'")
            }
            
            Spacer()
        }
    }
    
    var register:some View{
        
        VStack(spacing: 30){
            TextField("name@example.com", text: $email)
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color.white)
                .cornerRadius(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.gray, lineWidth: 0.5)
                )
            
            iPhoneNumberField("Phone Number", text: $number)
                .flagHidden(false)
                .flagSelectable(true)
                .prefixHidden(false)
               
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.gray, lineWidth: 0.5)
                )
                
            
            NavigationLink {
               EmptyView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                ZStack{
                    Color(red: 135/255, green: 116/255, blue: 1)
                        .frame(width: 190,height: 45)
                        .cornerRadius(10)
                    Text("НАЧАТЬ")
                        .foregroundColor(.white)
                        
                }
                .padding(.bottom,40)

                
            }
        }
        .padding()
        
        
    }
    
}






struct TabButtonStyle: ButtonStyle {
    var isSelected: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(isSelected ? .black : Color(red: 135/255, green: 116/255, blue: 225/255).opacity(0.53))
            .fontWeight(.bold)
            .font(.system(size: 22))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
