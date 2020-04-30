///
//  thirdView.swift
//  HW3dean
//
//  Created by User20 on 2020/4/29.
//  Copyright © 2020 00657136. All rights reserved.
//

import SwiftUI

struct thirdView: View {
    var body: some View {
    NavigationView {
        ScrollView(.vertical){
        Text("鵝鑾鼻燈塔是一座位於臺灣屏東縣恆春鎮墾丁國家公園鵝鑾鼻的燈塔。\n該燈塔一度被認定為台灣最南端的標誌也是照射距離最遠的燈塔，後被台灣最南點地標取代。\n最初落成於1883年，並經多次重修，現今建物為中華民國政府於1962年重修建成。")
            .font(.custom("Georgia-Bold",size:25))
            .padding()
            .background(LinearGradient(gradient: Gradient(colors:[Color(red:246/255,green:211/255,blue:101/255),Color(red:253/255,green:160/255,blue:133/255)]), startPoint: UnitPoint(x: 1, y: 1), endPoint: UnitPoint(x:1,y:0)))
            
            .padding()
         Text("車城福安宮，是位於臺灣屏東縣車城鄉福安村、為臺灣最大的土地祠。\n建廟之初始稱為「敬聖亭」，依廟方主張是1662年建立。\n當地還傳說荷蘭統治時期，土地公已在車城立足。\n林爽文事件時，福康安至恆春半島追捕莊大田，後在此立石碑紀念。")
            .font(.custom("Georgia-Bold",size:25))
            .padding()
            .background(LinearGradient(gradient: Gradient(colors:[Color(red:212/255,green:252/255,blue:121/255),Color(red:150/255,green:230/255,blue:161/255)]), startPoint: UnitPoint(x: 1, y: 1), endPoint: UnitPoint(x:1,y:0)))
            
            .padding()
            Text("山川琉璃吊橋位於臺灣茂林國家風景區內，為連接屏東縣三地門鄉與瑪家鄉的人行吊橋，跨越高屏溪的支流隘寮溪。\n橋體為吊床式吊橋，橋長262公尺、距河床平均高度45公尺，曾是全臺灣最長的吊床式吊橋，直至2017年由桃園市復興區的新溪口吊橋（橋長303公尺）超越。")
                       .font(.custom("Georgia-Bold",size:25))
                       .padding()
                       .background(LinearGradient(gradient: Gradient(colors:[Color(red:168/255,green:237/255,blue:234/255),Color(red:254/255,green:214/255,blue:227/255)]), startPoint: UnitPoint(x: 1, y: 1), endPoint: UnitPoint(x:1,y:0)))
            .padding()
            
            
            Text("大鵬灣古稱「鱉興港」、「茄藤港」、「關帝港」及「南平港」。日治時期稱「大潭」，日人於灣域旁大興土木，建立海軍航空基地，成為二次大戰侵略東南亞的南進基地，留下著名的日本神風特攻隊歷史痕跡。二戰後國民政府遷台接管此處，並將空軍幼校及空軍參謀大學等單位設於此，寄望空軍健兒「大鵬展翅，鵬程萬里」，因而再次改名為「大鵬灣」，沿用至今。")
                       .font(.custom("Georgia-Bold",size:25))
                       .padding()
                       .background(LinearGradient(gradient: Gradient(colors:[Color(red:253/255,green:219/255,blue:146/255),Color(red:209/255,green:253/255,blue:255/255)]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x:1,y:1)))
            
            .padding()
            Text("2020屏東熱帶農業博覽會於109/1/18登場，活動至2/9止，透過彩繪稻田、迎春花海、瓜果長廊、地景藝術等亮點特色及二十多個特色主題區，呈現多元豐富的屏東農、漁、林、休閒觀光產業及原民、客家等特色，同時透過多元展區特色展示呈現風貌，為年度旅遊大盛事。")
                       .font(.custom("Georgia-Bold",size:25))
                       .padding()
                       .background(LinearGradient(gradient: Gradient(colors:[Color(red:254/255,green:173/255,blue:166/255),Color(red:245/255,green:239/255,blue:239/255)]), startPoint: UnitPoint(x: 1, y: 1), endPoint: UnitPoint(x:1,y:0)))
            
            .padding()
            Text("墾丁國家公園是台灣在戰後時期第一個成立的國家公園，成立於1984年，隸屬內政部營建署，下設管理處，為台灣享譽國內外的熱門觀光勝地之一。\n全境位於台灣本島南端的恆春半島，範圍包括屏東縣恆春鎮、滿州鄉、車城鄉部分陸域及周邊海域，以墾丁里名之。園區範圍長寬25公里，陸域面積18,084公頃，海域面積15,206公頃，合計33,290公頃，全境氣候為熱帶季風氣候，植被及林相為熱帶季風雨林，並展示特色的石灰岩地形及珊瑚礁海蝕景觀及生態園區，而其鵝鑾鼻岬角則有–台灣最南點之名勝景點。")
                       .font(.custom("Georgia-Bold",size:25))
                       .padding()
                       .background(LinearGradient(gradient: Gradient(colors:[Color(red:146/255,green:254/255,blue:157/255),Color(red:0/255,green:201/255,blue:255/255)]), startPoint: UnitPoint(x: 1, y: 1), endPoint: UnitPoint(x:1,y:0)))
            .padding()
        }
        .navigationBarTitle("Introduction", displayMode: .inline)
        }
    }
}

struct thirdView_Previews: PreviewProvider {
    static var previews: some View {
        thirdView()
    }
}
