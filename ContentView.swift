//
//  ContentView.swift
//  Poli Navi
//
//  Created by zhozh on 16.03.2020.
//  Copyright © 2020 zhozh. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    @EnvironmentObject private var userData: UserData
    //@State private var date = Date()
    var body: some View {
        VStack {
            //CalendarSwiftUIView()
//            DatePicker("enter", selection: $date)
//                .datePickerStyle(GraphicalDatePickerStyle())
            PageView(completeWeekSlider(days: self.userData.schedule.days))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserData())
    }
}
