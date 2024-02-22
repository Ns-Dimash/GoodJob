

import SwiftUI

struct FirstPage: View {
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("bg")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    TabView(selection: $selectedTab) {
                        Start(centerImage: "just", headerText: "Улучши свою ферму", text: "Используйте наше приложение для сельского хозяйства и повысьте эффективность вашего хозяйства сегодня.")                .tag(0)
                        
                        Start(centerImage: "xxx", headerText: "Оптимизация ресурсов", text: "Управляйте водой, энергией и другими ресурсами вашей фермы, чтобы увеличить урожайность и снизить затраты.")
                            .tag(1)
                        
                        Start(centerImage: "xxx", headerText: "Аналитика для успеха", text: "Получайте ценную аналитику и прогнозы, основанные на данных, чтобы принимать информированные решения и увеличивать прибыль.")
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
                                Color(red: 0, green: 135/255, blue: 0)
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
            }
            
            
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
                    
                        .foregroundColor(index == selectedTab ?                                 Color(red: 0, green: 135/255, blue: 0)
                                         : Color(red: 239/255, green: 239/255, blue: 244/255))
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
