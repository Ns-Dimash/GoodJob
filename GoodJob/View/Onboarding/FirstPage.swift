//
//  FirstPage.swift
//  GoodJob
//
//  Created by Dimash Nsanbaev on 9/8/23.
//

//import SwiftUI
//
//
//
//struct FirstPage: View {
//    @State private var selectedTab = 0
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                TabView(selection: $selectedTab) {
//                    Start(centerImage: "First", headerText: "Найти работу", text: "Заполни портфолио и ты тоже будешь работать")                .tag(0)
//
//                    Start(centerImage: "Second", headerText: "Подтвердите свой заказ", text: "Огромная сеть работника поможет вам найти комфортную, безопасную и дешевую услугу.")
//                        .tag(1)
//
//                    Start(centerImage: "Third", headerText: "Отслеживайте свою работника", text: "Знайте своего работника заранее и сможете просматривать текущее местоположение в режиме реального времени на карте.")                        .tag(2)
//                }
//                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//
//                HStack(spacing: 0) {
//                                    ForEach(0..<3) { index in
//                                        Rectangle()
//                                            .frame(width: 30, height: 6)
//                                            .foregroundColor(index == selectedTab ? Color.blue : Color.gray)
//                                    }
//                                }
//                                .offset(x: CGFloat(selectedTab * 8), y: 4)
//            }
//        }
//    }
//}

import SwiftUI

struct FirstPage: View {
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationView {
            VStack {
                TabView(selection: $selectedTab) {
                    Start(centerImage: "First", headerText: "Найти работу", text: "Заполни портфолио и ты тоже будешь работать")                .tag(0)
                    
                    Start(centerImage: "Second", headerText: "Подтвердите свой заказ", text: "Огромная сеть работника поможет вам найти комфортную, безопасную и дешевую услугу.")
                        .tag(1)
                    
                    Start(centerImage: "Third", headerText: "Отслеживайте свою работника", text: "Знайте своего работника заранее и сможете просматривать текущее местоположение в режиме реального времени на карте.")
                        .padding(.top,100)

                    
                    
                        .tag(2)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                
                Spacer()

                if selectedTab == 2 {
                    NavigationLink {
                       LoginView()
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
                
                
                indicator
                
            }
//            .onAppear {
//                // Set the selectedTab to 2 (third page) when the view appears
//                selectedTab = 2
//            }
        }
    }
    
    var indicator:some View{
        ZStack{
            Color(.gray)
                .frame(width: 90,height: 6)
                .cornerRadius(6) // Add corner radius
            HStack(spacing: 0) {
                ForEach(0..<3) { index in
                    Rectangle()
                        .frame(width: 30, height: 6)
                    
                        .foregroundColor(index == selectedTab ? Color(red: 76/255, green: 229/255, blue: 177/255) : Color(red: 239/255, green: 239/255, blue: 244/255))
                }
            }
            .cornerRadius(6) // Add corner radius
            .animation(.spring(response: 0.5, dampingFraction: 0.6))
        }
    }
}


struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
