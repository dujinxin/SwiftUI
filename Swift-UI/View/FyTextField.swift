//
//  FyTextField.swift
//  Swift-UI
//
//  Created by 飞亦 on 3/27/20.
//  Copyright © 2020 COB. All rights reserved.
//

import SwiftUI

struct FyTextField: View {
    
    @Binding var name: String
        
    var body: some View {
        
        /// 创建TextField
        ///
        /// - Parameters:
        ///     - titleKey: 国际化文字
        ///     - title: UIKit中的placeHolder，用于说明，介绍
        ///     - text: 要展示的文字内容，需要绑定属性（@Binding）
        ///     - onEditingChanged: 结束编辑时，对比是否改变
        ///     - onCommit: 回车时触发
        TextField("1234", text: $name, onEditingChanged: { (isChanged) in
            if isChanged {
                print("changed")
            } else {
                print("unchanged")
            }
        }) {
            //回车，提交时触发
            print("onCommit")
        }
            
        ///也可以通过下边的
//        TextField("1234", text: Binding<String>(get: { (
//        }, set: { (s) in
//
//        }))

        /// 创建SecureField, TextField子类，密文输入
        ///
        /// - Parameters:
        ///     - titleKey: 国际化文字
        ///     - title: UIKit中的placeHolder，用于说明，介绍
        ///     - text: 要展示的文字内容，需要绑定属性（@Binding）
        ///     - onCommit: 回车时触发
//        SecureField("1234", text: $name, onCommit: {
//            //回车，提交时触发
//            print("onCommit")
//        })
                
            .frame(minWidth: 50, idealWidth: 200, maxWidth: 300,
               minHeight: 15, idealHeight: 50, maxHeight: 300,
               alignment: .center)//设置宽高以及对齐方式
            //.fixedSize() //默认纵横向都固定为理想尺寸
            .fixedSize(horizontal: false, vertical: true)//横向固定为理想尺寸
            
            
            .foregroundColor(Color.red)//对比UIKit中tintColor
            .background(Color.white) //背景颜色
            //在视图上覆盖一个视图，并设置其对齐方式
            //.overlay(Color.gray.opacity(0.5), alignment: .bottom)
            //不知道什么用，是层级的下标吗？但是时double类型。。。
            //.zIndex(3)
            
            //.position(CGPoint(x: 20, y: 30)) //设置中心点坐标
            //.offset(x: 30, y: 30) //x，y偏移量
            //.padding(30) //设置上下左右边距为30
            //.padding(.all, 10)
        
            .tag(1) //设置tag值
                
            .keyboardType(.default)
            //.textContentType(.nickname)
            ///DefaultTextFieldStyle,PlainTextFieldStyle,RoundedBorderTextFieldStyle,SquareBorderTextFieldStyle
            //.textFieldStyle()
        
        
            //Shape: 圆Circle, 圆角Capsule
            //.clipShape(Capsule(), style: FillStyle()) //裁剪形状
            //.cornerRadius(10) //圆角
            //.cornerRadius(10, antialiased: true) //圆角，裁剪的时候是否平滑
            .border(Color.green, width: 1)//边框颜色及宽度
        
            ///移除了UIKit中的alpha
            //.opacity(0.5) //透明度
            //.shadow(radius: 0.5)
            //.shadow(color: .black, radius: 0.5, x: 2, y: 2)//阴影
            //.blur(radius: 0.2, opaque:false) //模糊效果
            
            ///手势
            .onTapGesture { //tap手势事件
                print("onTapGesture")
            }
            .onLongPressGesture {//长按手势事件
                print("onLongPressGesture")
            }
            ///事件，出现，消失，拷贝，剪切等等...
            // 出现
            .onAppear {
                print("onAppear")
            }
            // 消失
            .onDisappear {
                print("onDisappear")
            }
    
            //事件控制
            //.hidden() //隐藏
            //.disabled(true) //是否禁止响应事件，默认为false
            //.deleteDisabled(false) //是否禁止删除
            //.moveDisabled(true) //是否禁止移动
        
        
            //.rotationEffect(Angle(radians: 45 * (self.zoomed ? 1 : 2)))
            

    }
}

struct FyTextField_Previews: PreviewProvider {
    static var previews: some View {
        FyTextField(name: .constant("0"))
    }
}
