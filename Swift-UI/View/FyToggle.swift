//
//  FyToggle.swift
//  Swift-UI
//
//  Created by 飞亦 on 3/28/20.
//  Copyright © 2020 COB. All rights reserved.
//

import SwiftUI

struct FyToggle: View {
    
    @State var isOn : Bool
    
    var body: some View {
        VStack {
            
            Toggle.init(isOn: $isOn) {
                Button.init("button") {
                    print("button")
                }
            }
            Toggle.init(isOn: $isOn) {
                Text("开启定位")
                    .foregroundColor(Color.purple)
            }
            Toggle.init("允许读取通讯录", isOn: $isOn)
            .toggleStyle(DefaultToggleStyle())
            
            if isOn {
                Text("已开启")
            } else {
                Text("已关闭")
            }
            
        }.frame(width: 300, height: 100, alignment: .center)
        
    }
}

struct FyToggle_Previews: PreviewProvider {
    static var previews: some View {
        FyToggle(isOn: true)
    }
}
