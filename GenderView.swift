//
//  GenderView.swift
//  File Made
//
//  Created by 暨大附中10 on 2022/1/10.
//

import SwiftUI

struct GenderView: View {
    
    var body: some View {
        
        //NavigationView{
        
            ZStack{
                
                Rectangle()
                    .modifier(View_Background())
                
                ZStack{
                    
                    Rectangle()
                        .modifier(Rectangle_Tittle())
                    
                    Text("平均每日攝取熱量計算")
                        .modifier(Text_Tittle())
                }
                .padding(.bottom,700)
                
                VStack{
                    NavigationLink(
                        
                        destination:  BMR_Boy_View(),
                        
                        label: {
                            
                            ZStack{
                                
                                Rectangle()
                                    .frame(width: 150, height: 100)
                                    .foregroundColor(Color("Green1"))
                                    .cornerRadius(10)
                                
                                Text("我是男生")
                                    .foregroundColor(.black)
                                    .scaleEffect(1.2)
                            }
                        }
                    )
                    
                    Spacer()
                        .frame(width: 10, height: 60)
                    
                    NavigationLink(
                        
                        destination:  BMR_Girl_View(),
                        
                        label: {
                            
                            ZStack{
                                
                                Rectangle()
                                    .frame(width: 150, height: 100)
                                    .foregroundColor(Color("Green1"))
                                    .cornerRadius(10)
                                
                                Text("我是女生")
                                    .foregroundColor(.black)
                                    .scaleEffect(1.2)
                            }
                        }
                    )
                }
                .scaleEffect(1.7)
                .padding(.top,70)
                Rectangle()
                    .frame(width: 450, height: 100)
                    .padding(.top,850)
            }
        
        //}
    }
}
struct GenderView_Previews: PreviewProvider {
    static var previews: some View {
        GenderView()
    }
}
