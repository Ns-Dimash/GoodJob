//
//  ProfileView.swift
//  GoodJob
//
//  Created by Rystem Asqar on 9/13/23.
//

import SwiftUI

struct ProfileView: View {
    @State var selectedGender = "Мужской"
    @State private var birthDate = Date.now
    let gender = ["Мужской", "Женщина", "ГЕЙ"]
    @State var name = ""
    @State var surname = ""
    @State var about = ""
    @State var photo = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Rectangle()
                    .foregroundColor(Color("background"))
                ZStack(alignment: .leading) {
                    Rectangle().fill(.white)
                        .frame(width: .infinity, height: 690)
                    
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading) {
                            Text("Имя")
                            TextField("", text: $name)
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                .background(Color.white)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.gray, lineWidth: 0.5)
                                )
                        }
                        VStack(alignment: .leading) {
                            Text("Фамилия")
                            TextField("", text: $surname)
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                .background(Color.white)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.gray, lineWidth: 0.5)
                                )
                        }
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Пол")
                                
                                Picker("Appearance", selection: $selectedGender) {
                                    ForEach(gender, id: \.self) {
                                        Text($0)
                                            .foregroundColor(.black)
                                    }
                                }
                                .pickerStyle(.menu)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.gray, lineWidth: 0.5)
                                )
                            }
                            VStack(alignment: .trailing) {
                                Text("День рождения")
                                DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date){}
                            }
                        }
                        VStack(alignment: .leading) {
                            Text("О себе")
                            TextField("", text: $about)
                                .frame(width: .infinity, height: 90)
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                .background(Color.white)
                                .cornerRadius(5)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, lineWidth: 0.5)
                                )
                        }
                        VStack(alignment: .leading) {
                            Text("Фото")
                            ZStack {
                                TextField("", text: $photo)
                                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .frame(width: .infinity, height: 180)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.gray, lineWidth: 0.5)
                                    )
                                Text("＋")
                                    .font(.system(size: 40))
                                    .opacity(0.6)
                            }
                        }
                        HStack {
                            Button {
                                
                            } label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color(UIColor(red: 233/255, green: 150/255, blue: 124/255, alpha: 1)))
                                        .frame(width: 160,height: 35)
                                    Text("Отменить")
                                        .foregroundColor(.white)
                                }
                            }
                            Spacer()
                            Button {
                                
                            } label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color("background"))
                                        .frame(width: 160,height: 35)
                                    Text("Опубликовать")
                                        .foregroundColor(.white)
                                }
                            }


                        }
                        
                    }
                }
                .padding()
                
            }
            .ignoresSafeArea()
            .navigationBarTitle(Text("Профиль"), displayMode: .large)
            .navigationBarTitleTextColor(Color.white)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

