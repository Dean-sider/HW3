//
//  fifthView.swift
//  HW3dean
//
//  Created by User20 on 2020/4/29.
//  Copyright © 2020 00657136. All rights reserved.
//

import SwiftUI

struct fifthView: View {
    @Binding var name: String
    @Binding var selectDate: Date
    @Binding var isYes:Bool
    @Binding var selectedfeel:Int
    @Binding var love:Int
    @Binding var selectedIndex1:Int
    @Binding var suggest:String
    @Binding var confirm: Bool
    var body: some View {
        NavigationView {
            ZStack{
                List{
                    Text("你曾經去過屏東的哪裡嗎？\(name)")
                    .font(.custom("Georgia-Bold",size:20))
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                    Text("你\(selectDate)去過屏東")
                    .font(.custom("Georgia-Bold",size:20))
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                    Text("你對屏東有\(love)分的喜歡")
                    .font(.custom("Georgia-Bold",size:20))
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                    Text("暢遊完屏東後對屏東有什麼感想或建議嗎？\n\(suggest)")
                    .font(.custom("Georgia-Bold",size:20))
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                    }
            }
        .navigationBarTitle(Text("確認填寫的資料"),   displayMode: .inline)
        }
    }
}

struct fifthView_Previews: PreviewProvider {
    static var previews: some View {
        fifthView(
            name: .constant(""),
            selectDate: .constant(Date()),
            isYes: .constant(false),
            selectedfeel: .constant(0),
            love:.constant(15),
            selectedIndex1: .constant(0),
            suggest: .constant(""),
            confirm: .constant(true)
        )
    }
}

