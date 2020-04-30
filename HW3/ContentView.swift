//
//  ContentView.swift
//  HW3dean
//
//  Created by User20 on 2020/4/29.
//  Copyright © 2020 00657136. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var place=["鵝鑾鼻燈塔","車城福安宮","山川琉璃吊橋","大鵬灣","屏東熱帶農業博覽會","墾丁國家公園"]
    @State private var selectedIndex = 0
    @State private var scale: CGFloat = 1//調整圖片大小
    @State private var brightnessAmount: Double = 0//代表圖片亮度
    @State private var showsecondPage = false//button
    var body: some View {
NavigationView {
    VStack{
        GeometryReader{geometry in
            ZStack{
                Button(action:{self.showsecondPage=true}){
                    Image("\(self.place[self.selectedIndex])")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFill()
                    .scaleEffect(self.scale)//縮放圖片
                    .brightness(self.brightnessAmount)//調整亮度
                    .frame(width:geometry.size.width,height:geometry.size.width/4*3)//比例4:3
                    .clipped()
                    .cornerRadius(20)
                    .shadow(radius: 1)
                    .offset(y: 40)
                }.sheet(isPresented: self.$showsecondPage){
                    secondView(showsecondPage:self.$showsecondPage)
                }
            }//ZStack
        }//GeometryReader
       
        Picker(selection: self.$selectedIndex, label: Text("選擇地點")) {
            ForEach(0..<self.place.count) { (index) in
            Text(self.place[index])
          }
        }.frame(width:410, height: 270)
         .background(LinearGradient(gradient: Gradient(colors:[Color(red:251/255,green:194/255,blue:235/255),Color(red:166/255,green:193/255,blue:238/255)]), startPoint: UnitPoint(x: 1, y: 1), endPoint: UnitPoint(x:1,y:0)))
        .foregroundColor(.white)
        .cornerRadius(20)
        .shadow(radius: 1)
        .offset(y:70)
        Form{
            HStack{
               Text("圖片大小")
               Slider(value: self.$scale, in: 0...1)
               .accentColor(.orange)//設定slider的顏色
               Text("\(self.scale, specifier: "%.2f")")
               }
            HStack {
               Text("亮度")
               Slider(value: self.$brightnessAmount, in: 0...1, minimumValueLabel: Image(systemName: "sun.max.fill").imageScale(.small), maximumValueLabel: Image(systemName: "sun.max.fill").imageScale(.large)) {
                   Text("")}
               Text("\(self.scale, specifier: "%.2f")")
           }
        }//Form
        .offset(y:65)
        }//VStaclk
        .navigationBarTitle("屏東趣", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
