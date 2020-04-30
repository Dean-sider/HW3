//
//  secondView.swift
//  HW3dean
//
//  Created by User20 on 2020/4/29.
//  Copyright © 2020 00657136. All rights reserved.
//

import SwiftUI

struct secondView: View {
    @Binding var showsecondPage:Bool
    var body: some View {
        TabView {
            thirdView()
            .tabItem {
                Image(systemName:"sun.max.fill")
                Text("introduction")
            }
            fourthView()
            .tabItem {
                Image(systemName: "list.dash")
                Text("Qusion")
                
            }
        }
        .accentColor(.orange)
    }
}
struct secondView_Previews: PreviewProvider {
    static var previews: some View {
        secondView(showsecondPage:.constant(true))
    }
}
