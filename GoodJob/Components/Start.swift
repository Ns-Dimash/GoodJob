//
//  Start.swift
//  GoodJob
//
//  Created by Dimash Nsanbaev on 9/8/23.
//

import SwiftUI

struct Start: View {
    
    let centerImage:String
    let headerText:String
    let text:String
    
    var body: some View {
        
        VStack{
            Image(centerImage)
                .resizable()
                .frame(width: 278, height: 278)
                .padding(.bottom,50)
            Text(headerText)
                .font(.custom("Roboto-light", size: 30.0))
                .padding(.top,10)
                .multilineTextAlignment(.center)

            
            Text(text)
                .font(.custom("Roboto-light", size: 17.0))
                .padding(.top,5)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)

        }
        .frame(width: 313)
        .padding(.bottom,100)
    }
}

struct Start_Previews: PreviewProvider {
    static var previews: some View {
        Start(centerImage: "First", headerText: "Найти работу", text: "Заполни портфолио и ты тоже будешь работать")
    }
}
