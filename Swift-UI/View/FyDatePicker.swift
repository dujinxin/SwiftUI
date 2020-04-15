//
//  FyDatePicker.swift
//  Swift-UI
//
//  Created by 飞亦 on 3/30/20.
//  Copyright © 2020 COB. All rights reserved.
//

import SwiftUI

struct FyDatePicker: View {
        
    @State var selectRow = Date()
    var body: some View {
        
        VStack {

            /// Creates an instance that selects a `Date` with an unbounded range.
            ///
            /// - Parameters:
            ///     - selection: The date value being displayed and selected.
            ///     - displayedComponents: The date components that user is able to
            ///         view and edit. Defaults to `[.hourAndMinute, .date]`.
            ///     - label: A view that describes the use of the date.
            DatePicker.init(selection: $selectRow, displayedComponents: [.date], label: {
                Text("date")
            })
            /// Creates an instance that selects a `Date` on or after some start date.
            ///
            /// - Parameters:
            ///     - selection: The date value being displayed and selected.
            ///     - range:
            ///       ClosedRange<Date>:  The inclusive range of selectable dates.
            ///       PartialRangeFrom<Date>: The open range from some selectable start date.
            ///       PartialRangeThrough<Date>: The open range before some selectable end date.
            ///     - displayedComponents: The date components that user is able to
            ///         view and edit. Defaults to `[.hourAndMinute, .date]`.
            ///     - label: A view that describes the use of the date.
            DatePicker.init(selection: $selectRow, in: Date()...) {
                Text("date")
            }
            
            .pickerStyle(WheelPickerStyle())
            .foregroundColor(Color.purple)
            .background(Color.init(red: 0.9, green: 0.9, blue: 0.9))
            
//            DatePicker.init("date", selection: $selectRow, in: Date(), displayedComponents: .hourAndMinute)
            
        }.padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
        
    }
}

struct FyDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        FyDatePicker()
    }
}
