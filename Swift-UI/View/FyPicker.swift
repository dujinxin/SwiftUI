//
//  FyPicker.swift
//  Swift-UI
//
//  Created by 飞亦 on 3/30/20.
//  Copyright © 2020 COB. All rights reserved.
//

import SwiftUI

struct FyPicker: View {
    
    var section = ["1","2","3","4","5","6"]
    @State var selectRow = 1
    
    var body: some View {
        
        VStack {
            
            Picker.init("Picker", selection: $selectRow) {
                ForEach(0..<self.section.count) { i in
                    Text(self.section[i])
                }
            }
            
            .pickerStyle(SegmentedPickerStyle())
            
            Picker.init(selection: $selectRow, label: Text("Picker")) {
                ForEach(0..<self.section.count) { i in
                    Text(self.section[i])
                }
            }
            .pickerStyle(WheelPickerStyle())
            .foregroundColor(Color.purple)
            .background(Color.init(red: 0.9, green: 0.9, blue: 0.9))
            .font(Font.system(size: 20))
            
            
        }.padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
        
    }
}

struct FyPicker_Previews: PreviewProvider {
    static var previews: some View {
        FyPicker()
    }
}
