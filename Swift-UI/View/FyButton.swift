//
//  FyButton.swift
//  Swift-UI
//
//  Created by 飞亦 on 3/27/20.
//  Copyright © 2020 COB. All rights reserved.
//

import SwiftUI

struct FyButton: View {
    
    var body: some View {
        
     ///初始化事件及按钮显示内容。只有内容部分响应事件，其他空白区域并不响应事件，
        ///如果想要整个按钮触发事件，请使用手势
        ///而且如果同时此事件和手势同时存在的话，内容部分不响应手势
        Button.init(action: {
            print("click")
        }) {
            //设置显示内容，默认为从左到右。也可以自己布局
            //对比UIButton，简直太好了，以前想要使用一个按钮的话需要各种调换位置，调整大小调整间距，不然的话，就得自定义一个view
            VStack {
                ///Text的所有属性都可以设置
                Text("button")
                    .font(Font.system(size: 15)) //字体大小
                    .foregroundColor(.purple) //字体颜色
                    .background(Color.yellow) //背景颜色
                
                Image(systemName: "trash")
            }

        }
            
            .frame(minWidth: 50, idealWidth: 150, maxWidth: 300,
               minHeight: 15, idealHeight: 30, maxHeight: 50,
               alignment: .center)//设置宽高以及对齐方式
            //.fixedSize() //默认纵横向都固定为理想尺寸
            .fixedSize(horizontal: true, vertical: false)//横向固定为理想尺寸
            .foregroundColor(Color.red)//对比UIKit中tintColor
            .background(Color.white) //背景颜色
            //在视图上覆盖一个视图，并设置其对齐方式
            .overlay(Color.gray.opacity(0.5), alignment: .bottom)
            //不知道什么用，是层级的下标吗？但是时double类型。。。
            //.zIndex(3)
            
            //.position(CGPoint(x: 20, y: 30)) //设置中心点坐标
            //.offset(x: 30, y: 30) //x，y偏移量
            //.padding(30) //设置上下左右边距为30
            //.padding(.all, 10)
        
            .tag(1) //设置tag值
        
            //Shape: 圆Circle, 圆角Capsule
            .clipShape(Capsule(), style: FillStyle()) //裁剪形状
            .cornerRadius(10) //圆角
            .cornerRadius(10, antialiased: true) //圆角，裁剪的时候是否平滑
            //.border(Color.green, width: 1)//边框颜色及宽度
        
            ///移除了UIKit中的alpha
            //.opacity(0.5) //透明度
            .shadow(radius: 0.5)
            .shadow(color: .black, radius: 0.5, x: 2, y: 2)//阴影
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
        
            //.buttonStyle(PlainButtonStyle())
    }
}

struct FyButton_Previews: PreviewProvider {
    static var previews: some View {
        FyButton()
    }
}
