//
//  FySlider.swift
//  Swift-UI
//
//  Created by 飞亦 on 3/30/20.
//  Copyright © 2020 COB. All rights reserved.
//

import SwiftUI

struct FySlider: View {
    
    @State var process: Float = 0.2
    
    var body: some View {
        
        VStack {
            
            //Slider.init(value: $process)
            //Slider.init(value: $process, in: 0...1)
            
            Slider.init(value: $process) {
                Text("0.5")
            }
            Slider.init(value: $process, in: 0...1) {
                Text("0.5")
            }
            Slider.init(value: $process, minimumValueLabel: Text("0"), maximumValueLabel: Text("1")) {
                Text("0.5")
            }
            Slider.init(value: $process, in: 0...1) { (isChanged) in
                if isChanged {
                    print(self.process)
                }
            }
            Slider.init(value: $process, in: 0...1, step: 0.1) { (isChanged) in
                if isChanged {
                    print(self.process)
                }
            }
            Slider.init(value: $process, in: 0...1, onEditingChanged: { (isChanged) in
                if isChanged {
                    print(self.process)
                }
            }) {
                Text("0.5")
            }
            Slider.init(value: $process, in: 0...1, step: 0.1, onEditingChanged: { (isChanged) in
                if isChanged {
                    print(self.process)
                }
            }) {
                Text("0.5")
            }
            Slider.init(value: $process, in: 0...1, minimumValueLabel: Text("0"), maximumValueLabel: Text("1")) {
                Text("0.5")
            }
            Slider.init(value: $process, in: 0...1, onEditingChanged: { (isChanged) in
                if isChanged {
                    print(self.process)
                }
            }, minimumValueLabel: Text("0"), maximumValueLabel: Text("1")) {
                Text("0.5")
            }
            /// Creates an instance that selects a value from within a range.
            ///
            /// - Parameters:
            ///     - value: The selected value within `bounds`.
            ///     - bounds: The range of the valid values. Defaults to `0...1`.
            ///     - step: The distance between each valid value.
            ///     - onEditingChanged: A callback for when editing begins and ends.
            ///     - minimumValueLabel: A `View` that describes `bounds.lowerBound`.
            ///     - maximumValueLabel: A `View` that describes `bounds.lowerBound`.
            ///     - label: A `View` that describes the purpose of the instance.
            ///
            /// The `value` of the created instance will be equal to the position of
            /// the given value within `bounds`, mapped into `0...1`.
            ///
            /// `onEditingChanged` will be called when editing begins and ends. For
            /// example, on iOS, a `Slider` is considered to be actively editing while
            /// the user is touching the knob and sliding it around the track.
            Slider.init(value: $process, in: 0...1, step: 0.1, onEditingChanged: { (isChanged) in
                if isChanged {
                    print(self.process)
                }
            }, minimumValueLabel: Text("0"), maximumValueLabel: Text("1")) {
                Text("0.5")
            }
            .foregroundColor(Color.purple)//显示字体颜色
            .background(Color.gray)//背景色
            .accentColor(Color.red)//进度条颜色
        
        }.padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
        
    }
}

struct FySlider_Previews: PreviewProvider {
    static var previews: some View {
        FySlider()
    }
}
