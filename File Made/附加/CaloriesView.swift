//
//  CaloriesView.swift
//  File Made
//
//  Created by 暨大附中10 on 2021/12/26.
//

import SwiftUI

struct CaloriesView: View {
    
    @State var OnOff = false
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .modifier(View_Background())
            
            ZStack{
                
                Rectangle()
                    .modifier(Rectangle_Tittle())
                
                Text("了解熱量")
                    .modifier(Text_Tittle())
            }
            .padding(.bottom,700)
            
            Button{
                OnOff.toggle()
            }label:{
                ZStack{
                    
                    Rectangle()
                        .frame(width: 300, height: 150)
                        .foregroundColor(.black)
                    
                    Rectangle()
                        .frame(width: 290, height: 140)
                        .foregroundColor(.orange)
                    
                    Text("點我了解")
                        .scaleEffect(2)
                        .frame(width: 290, height: 140)
                        .foregroundColor(.black)
                }
            }.offset(y: OnOff ? 800:0)
            
            Button{
                OnOff.toggle()
            }label:{
                
                ZStack{
                    
                    Rectangle()
                        .frame(width:400, height: 200)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    
                    VStack{
                        
                        Text("世界衛生組織建議以身體質量指數")
                            .scaleEffect(1.2)
                        Spacer()
                            .frame(width: 1, height:20)
                        Text("世上萬物的運作都需要能量")
                        Text("我們身體的四肢能動、心臟能跳")
                        Text("大腦能思考、能生長發育、能繁衍後代")
                        Text("沒有能量是不行的")
                    }
                    .scaleEffect(1.1)
                    .foregroundColor(.black)
                }
            }
            .offset(y: OnOff ? 0:800)
            .padding(.bottom,350)
            
            Button{
                OnOff.toggle()
            }label:{
                
                ZStack{
                    
                    Rectangle()
                        .frame(width:400, height: 350)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    
                    VStack{
                        
                        Text("熱量的單位")
                            .scaleEffect(1.2)
                        Spacer()
                            .frame(width: 1, height:20)
                        Text(" 在營養學上，最主要的熱量單位是大卡")
                        Text("（千卡，kcal）；一公克的醣類與蛋白質")
                        Text("能提供4大卡的熱量，脂肪為9大卡")
                        Text("酒精也有熱量，每克的酒精則能提供")
                        Text("7大卡熱量；至於營養素中的維生素")
                        Text("、礦物質、纖維和水則不會提供我們身體熱量")
                    }
                    .scaleEffect(1.1)
                    .foregroundColor(.black)
                }
            }
            .offset(y: OnOff ? 0:800)
            .padding(.top,300)
        }
    }
}

struct CaloriesView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CaloriesView()
    }
}
