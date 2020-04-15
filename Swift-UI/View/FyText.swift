//
//  FyText.swift
//  Swift-UI
//
//  Created by 飞亦 on 11/2/19.
//  Copyright © 2019 COB. All rights reserved.
//

import SwiftUI

struct FyText: View {

    var body: some View {
        
        Text("Hello World\n你好\n123")
            //.frame(width: 160, height: 20, alignment: .leading)
            .frame(minWidth: 50, idealWidth: 150, maxWidth: 300,
                        minHeight: 15, idealHeight: 30, maxHeight: 80,
                        alignment: .leading)//设置宽高以及对齐方式
            //.fixedSize() //默认纵横向都固定为理想尺寸
            .fixedSize(horizontal: true, vertical: false)//横向固定为理想尺寸
            //.position(CGPoint(x: 20, y: 30)) //设置中心点坐标
            //.offset(x: 30, y: 30) //x，y偏移量
            .padding(30) //设置上下左右边距为30
            //.padding(.all, 10)

            .font(Font.system(size: 15)) //字体大小
            .foregroundColor(.purple) //字体颜色
            .background(Color.yellow) //背景颜色
            //在视图上覆盖一个视图，并设置其对齐方式
            .overlay(Color.gray.opacity(0.5), alignment: .bottom)
            
            .tag(1) //设置tag值

            //Shape: 圆Circle, 圆角Capsule
            .clipShape(Capsule(), style: FillStyle()) //裁剪形状
            .cornerRadius(10) //圆角
            .cornerRadius(10, antialiased: true) //圆角，裁剪的时候是否平滑
            .border(Color.green, width: 1)//边框颜色及宽度

            ///移除了UIKit中的alpha
            .opacity(0.8) //透明度
            .shadow(radius: 0.5)
            .shadow(color: .black, radius: 0.5, x: 2, y: 2)//阴影
            .blur(radius: 0.8, opaque:false) //模糊效果

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

            // .overlay(, alignment: <#T##Alignment#>)

            ///单行时无效，多行才起作用
            .multilineTextAlignment(.center) //多行文本时左对齐
            .lineLimit(3) //限制行数，默认不限制，能否正确显示也受其frame大小和lineSpace的影响
            .lineSpacing(5) //行间距

            
            //.background(<#T##background: View##View#>, alignment: <#T##Alignment#>)
            //.animation(<#T##animation: Animation?##Animation?#>)
            //.transition(<#T##t: AnyTransition##AnyTransition#>)

            //.layoutPriority(100)
            .alignmentGuide(.leading) { (viewDimensions) -> CGFloat in
              print(viewDimensions)
              return 30
            }
    }
}
