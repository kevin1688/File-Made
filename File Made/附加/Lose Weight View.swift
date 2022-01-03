//
//  Lose Weight View.swift
//  File Made
//
//  Created by 暨大附中10 on 2021/12/26.
//

import SwiftUI

struct Lose_Weight_View: View {
    
    @State var OnOff = false
    
    @State var OnOff2 = false
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .modifier(View_Background())
            
            ZStack{
                
                Rectangle()
                    .modifier(Rectangle_Tittle())
                
                Text("網路上的減肥方式")
                    .modifier(Text_Tittle())
            }
            .padding(.bottom,700)
            
            VStack{
                
                Button{
                    OnOff.toggle()
                }label:{
                    
                    ZStack{
                        
                        Rectangle()
                            .frame(width:350, height: 200)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                        
                        
                        Text("證實有效可試的減肥方式")
                            .scaleEffect(1.5)
                            .foregroundColor(.black)
                    }
                }
                
                Spacer()
                    .frame(width:1, height: 100)
                
                Button{
                    OnOff2.toggle()
                }label:{
                    
                    ZStack{
                        
                        Rectangle()
                            .frame(width:350, height: 200)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                        
                        Text("證實無效傷身的減肥方式")
                            .scaleEffect(1.5)
                            .foregroundColor(.black)
                    }
                }
            }
            Button{
                OnOff2.toggle()
            }label:{
                
                ZStack{
                    
                    Rectangle()
                        .frame(width:350, height: 200)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    
                    Text("減肥藥")
                        .foregroundColor(.black)
                }
            }
            .padding(.top,300)
            .offset(y: OnOff2 ? 0:800)
            
            Button{
                OnOff.toggle()
            }label:{
                
                ZStack{
                    
                    Rectangle()
                        .frame(width:350, height: 700)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    
                    VStack{
                        
                        VStack{
                            
                            Text("抗性澱粉（resistant starch, RS")
                            Text("被定義為人體上消化道（胃和小腸）")
                            Text("不能消化吸收的澱粉組分")
                            Text("(Asp, Bjorck et al. 1987)")
                            Text("簡單說，它雖然在化學結構上")
                            Text("是貨真價實的澱粉，但不能")
                            Text("被人體分解成葡萄糖，然後")
                            Text("被吸收到血液當中，作為")
                            Text("人體的能量來源用掉")
                            
                        }
                        .foregroundColor(.black)
                        
                        Spacer()
                            .frame(width: 1, height:100)
                        
                        VStack{
                            
                            Text("當然，小腸沒有消化它，它就會")
                            Text("比較完整地進入大腸，然後大腸菌群中")
                            Text("那些喜歡澱粉的品種會非常歡迎它")
                            Text("並因為「食物充足」而繁榮起來")
                            Text("成為優勢比較強的菌群。這些菌所產生")
                            Text("的丁酸等短鏈脂肪酸，對人體維持健康的")
                            Text("腸道環境，預防高血脂和腸癌等")
                            Text("都是有益的")
                            
                        }
                        .foregroundColor(.black)
                    }
                }
            }
            .padding(.top,120)
            .offset(y: OnOff ? 0:800)
            
        }
    }
}

struct Lose_Weight_View_Previews: PreviewProvider {
    
    static var previews: some View {
        
        Lose_Weight_View()
    }
}




