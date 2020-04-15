//
//  ContentView.swift
//  Swift-UI
//
//  Created by 飞亦 on 10/24/19.
//  Copyright © 2019 COB. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
    var id: String
    
    var name: String
    var imageName: String?
    var detail: String = "detail"
}

struct CellView: View {
    
    var user: User
    
    var clickBlock: (()->())?
    
    var body: some View {
        
        HStack {
            Image(systemName: user.imageName ?? "snow")
            VStack(alignment: .leading, spacing: 0, content: {
                Text(user.name)
                    .foregroundColor(.purple)
                    .font(Font.system(size: 17))
                Text(user.detail)
                    .font(Font.system(size: 14))
            })
        }
       
    }
}

struct ContentView: View {
    
    @Binding var name: String
    
    let users = [User(id: "1", name: "Text"),
                 User(id: "2", name: "Button"),
                 User(id: "3", name: "Image"),
                 User(id: "4", name: "TextField"),
                 User(id: "5", name: "Toggle"),
                 User(id: "6", name: "Slider"),
                 User(id: "7", name: "Stepper"),
                 User(id: "8", name: "Picker"),
                 User(id: "9", name: "DatePicker")]
    
    
    var body: some View {
        
        TabView.init {
            NavigationView {
                //第一种
                List {
                    Section.init(header: Text("Views and Controls")) {
                        NavigationLink(destination: FyText()) {
                            CellView(user: users[0])
                        }
                        NavigationLink(destination: FyButton()) {
                            CellView(user: users[1])
                        }
                        NavigationLink(destination: FyImage()) {
                            CellView(user: users[2])
                        }
                        NavigationLink(destination: FyTextField(name: .constant("0"))) {
                            CellView(user: users[3])
                        }
                        NavigationLink(destination: FyToggle(isOn: true)) {
                            CellView(user: users[4])
                        }
                        NavigationLink(destination: FySlider()) {
                            CellView(user: users[5])
                        }
                        NavigationLink(destination: FyStepper()) {
                            CellView(user: users[6])
                        }
                        NavigationLink(destination: FyPicker()) {
                            CellView(user: users[7])
                        }
                        NavigationLink(destination: FyDatePicker()) {
                            CellView(user: users[8])
                        }
                    }
                    Section.init(header: Text("View Layout and Presentation")) {
                        NavigationLink(destination: FyDatePicker()) {
                            CellView(user: users[8])
                        }
                    }

                }
                    .listStyle(GroupedListStyle())
                    .navigationBarTitle(Text("SwiftUI"))
            

                    //第二种
        //            List(users) { user in
        //                NavigationLink(destination: Text("123456789")) {
        //                    CellView(user: user)
        //                }
        //            }
            
                }
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
        
//        NavigationView {
//
//            //第一种
//            Group {
//
//                List {
//
//                    NavigationLink(destination: FyText()) {
//                        CellView(user: users[0])
//                    }
//                    NavigationLink(destination: FyButton()) {
//                        CellView(user: users[1])
//                    }
//                    NavigationLink(destination: FyImage()) {
//                        CellView(user: users[2])
//                    }
//                    NavigationLink(destination: FyTextField(name: .constant("0"))) {
//                        CellView(user: users[3])
//                    }
//                    NavigationLink(destination: FyToggle(isOn: true)) {
//                        CellView(user: users[4])
//                    }
//                    NavigationLink(destination: FySlider()) {
//                        CellView(user: users[5])
//                    }
//                    NavigationLink(destination: FyStepper()) {
//                        CellView(user: users[6])
//                    }
//                    NavigationLink(destination: FyPicker()) {
//                        CellView(user: users[7])
//                    }
//                    NavigationLink(destination: FyDatePicker()) {
//                        CellView(user: users[8])
//                    }
//
//                }.listStyle(GroupedListStyle())
//
//                //第二种
//    //            List(users) { user in
//    //                NavigationLink(destination: Text("123456789")) {
//    //                    CellView(user: user)
//    //                }
//    //            }
//
//                    .navigationBarTitle(Text("SwiftUI"))
//            }
//        }
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(name: .constant("0"))
    }
}

