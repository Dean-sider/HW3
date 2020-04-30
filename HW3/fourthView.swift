//
//  fourthView.swift
//  HW3dean
//
//  Created by User20 on 2020/4/29.
//  Copyright © 2020 00657136. All rights reserved.
//

import SwiftUI

struct fourthView: View {
        @State private var name = ""//TextField
        @State private var selectDate=Date()
        let today=Date()
        let startDate = Calendar.current.date(byAdding: .year, value:-2,to:Date())!
        var year:Int{Calendar.current.component(.year, from:selectDate)}
        @State private var isYes = false
        var feel=["好玩","不好玩"]
        @State private var selectedfeel = 0
        @State private var love=0
        var feel1=["會","不會"]
        @State private var selectedIndex1 = 0
        @State private var suggest = ""
        @State private var showalert=false
        @State private var confirm=false
    
var body: some View {
NavigationView {
        Form{
            //1
                TextField("你曾經去過屏東的哪裡嗎？", text: $name)
                .frame(width: 310, height: 10)
                .padding()//寬
                .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.orange, lineWidth: 2))
                //2
            DatePicker("When?",selection: self.$selectDate,in: self.startDate...self.today,displayedComponents: .date)
        //3
        VStack{
            Toggle("你可以選擇是否回答以下隱藏題目(否/是)?", isOn: $isYes)
            if isYes{
                    Text("你覺得屏東好玩嗎？")
                    Picker("你覺得屏東好玩嗎？", selection: self.$selectedfeel) {
                    ForEach(0..<self.feel.count) { (index) in
                      Text(self.feel[index])
                    }
                }.pickerStyle(SegmentedPickerStyle())}
        }
        //4
        Stepper(value: $love, in: 1...20){
            if love == 1 {Text("對屏東有幾分的愛呢？\(love)")}
            else {Text("對屏東有幾分的愛呢？\(love)")}
        }
        //5
        HStack{
            Text("是否還想來屏東呢？")
            Picker("是否還想再來屏東呢？", selection: self.$selectedIndex1) {
                ForEach(0..<self.feel1.count) { (index) in
                Text(self.feel1[index])
              }
            }.pickerStyle(SegmentedPickerStyle())
        }
        //6
        TextField("暢遊完屏東後對屏東有什麼感想或建議嗎？", text: $suggest)
        .frame(width: 310, height: 50)
        .padding()//寬
        .overlay(RoundedRectangle(cornerRadius: 10)
        .stroke(Color.orange, lineWidth: 2))
            
        Button(action:
            {
                if self.name == ""
                {
                    self.showalert = true
                }
                else
                {
                    self.confirm = true
                }
            }){
                Text("完成問卷")
                .font(.custom("Georgia-Bold",size:40))
                .foregroundColor(Color.black)
                .background(LinearGradient(gradient: Gradient(colors:[Color(red:255/255,green:236/255,blue:210/255),Color(red:252/255,green:182/255,blue:159/255)]), startPoint: UnitPoint(x: 1, y: 1), endPoint: UnitPoint(x:1,y:0)))
                .cornerRadius(10)
                .padding(.leading, 105)
        
            .alert(isPresented: $showalert)
            {
                () -> Alert in
                return Alert(title:Text("幫我填一下問卷嗎～"))
            }
            .sheet(isPresented:self.$confirm){
                fifthView(name: self.$name,selectDate:self.$selectDate,isYes: self.$isYes,selectedfeel:self.$selectedfeel,love:self.$love,selectedIndex1:self.$selectedIndex1,suggest:self.$suggest,confirm: self.$confirm)}

        }//Form
        .navigationBarTitle("問卷調查", displayMode: .inline)
        }
    }
}
}
struct fourthView_Previews: PreviewProvider {
    static var previews: some View {
        fourthView()
    }
}
