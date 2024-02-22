//
//  OnlyLoginView.swift
//  GoodJob
//
//  Created by Dimash Nsanbaev on 2/22/24.
//

import SwiftUI

struct OnlyLoginView: View {
    @Environment(\.dismiss) var dismiss

//    Welcome back! Glad to see you, Again!
    var body: some View {
        VStack(alignment: .leading,spacing: 60){
            Button {
                   dismiss()
            } label: {
                Image(systemName:"chevron.backward")
                .foregroundColor(Color(red: 0, green: 135/255, blue: 0))
                .font(.system(size: 24))

            }
            
            Text("Welcome back! Glad to see you, Again!")
                .foregroundColor(Color(red: 0, green: 135/255, blue: 0))
                .font(.system(size: 34))
                .fontWeight(.bold)
            
            Spacer()

        }
        .padding(.top,30)
        
        
    }
}

struct OnlyLoginView_Previews: PreviewProvider {
    static var previews: some View {
        OnlyLoginView()
    }
}
