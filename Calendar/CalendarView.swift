//
//  DatePicker.swift
//  Poli Navi
//
//  Created by zhozh on 21.03.2020.
//  Copyright © 2020 zhozh. All rights reserved.
//

import SwiftUI
import Foundation
import UIKit

struct CalendarView: UIViewRepresentable {

    //@Binding var isMonthScope: Bool
        
    func makeUIView(context: Context) -> FSCalendar {
        
        let calendar = FSCalendar(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        
        calendar.scope = .week

        return calendar
    }

    func updateUIView(_ uiView: FSCalendar, context: Context) {
        
    }
}

struct CalendarSwiftUIView: View {
    
    @EnvironmentObject private var userData: UserData
    
    //@State var isMonthScope: Bool = false
    var body: some View {
        
            
//            Toggle(isOn: $isMonthScope) {
//                Text("month")
//            }.padding()
        
        //CalendarView(isMonthScope: $isMonthScope)
        CalendarView()
    }
    
}
struct CalendarSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarSwiftUIView().environmentObject(UserData())
    }
}
