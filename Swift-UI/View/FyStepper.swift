//
//  FyStepper.swift
//  Swift-UI
//
//  Created by 飞亦 on 3/30/20.
//  Copyright © 2020 COB. All rights reserved.
//

import SwiftUI

struct FyStepper: View {
    
    @State var process: Float = 100
    
    var body: some View {
        
        VStack {
            
            Stepper.init(value: $process) {
                Text("stepper")
            }
            Stepper.init(value: $process, in: 0...150) {
                Text("stepper")
            }
            Stepper.init(value: $process, in: 0...150, step: Float(1), onEditingChanged: { (isChanged) in
                if isChanged {
                    print(self.process)
                }
            }) {
                Text("stepper")
            }
            Stepper.init(value: $process, step: 1, onEditingChanged: { (isChanged) in
                if isChanged {
                    print(self.process)
                }
            }) {
                Text("stepper")
            }
            
            Stepper.init(onIncrement: nil, onDecrement: nil) {
                Text("stepper")
            }
            
            Stepper.init("stepper", value: $process)
            Stepper.init("stepper", value: $process, in: 0...150)
            Stepper.init("stepper", onIncrement: nil, onDecrement: nil)
            Stepper.init("stepper", value: $process, step: 1) { (isChanged) in
                if isChanged {
                    print(self.process)
                }
            }
            Stepper.init("stepper", onIncrement: {
                self.process += 1
            }, onDecrement: {
                self.process -= 1
            }) { (isChanged) in
                if isChanged {
                    print(self.process)
                }
            }
            .background(Color.gray)
            .foregroundColor(Color.blue)
            .font(Font.largeTitle)
        
        }.padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
        
    }
}

struct FyStepper_Previews: PreviewProvider {
    static var previews: some View {
        FyStepper()
    }
}
