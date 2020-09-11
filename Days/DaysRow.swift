//
//  DaysRow.swift
//  Poli Navi
//
//  Created by zhozh on 17.03.2020.
//  Copyright © 2020 zhozh. All rights reserved.
//

import SwiftUI

//struct DaysRow: View {
//
//    @EnvironmentObject private var userData: UserData
//
//    var body: some View {
//        //Text("Hello, World!")
//        VStack {
//            ScrollView(.horizontal, showsIndicators: true) {
//                HStack(alignment: .center) {
//                    ForEach(self.userData.schedule.days, id: \.weekday) { dayColumn in
//                        LessonsList(day: dayColumn)
//                    }
//                }
//            }
//        }
//    }
//}
//
//struct DaysRow_Previews: PreviewProvider {
//    static var previews: some View {
//        DaysRow().environmentObject(UserData())
//    }
//}

//struct DaysRow: View {
//
//    @EnvironmentObject private var userData: UserData
//
//    var body: some View {
//        //Text("Hello, World!")
//        HStack {
//            //PageView(self.userData.schedule.days)
//        }
//    }
//}
//
//struct DaysRow_Previews: PreviewProvider {
//    static var previews: some View {
//        DaysRow().environmentObject(UserData())
//    }
//}

func completeWeekSlider(days: [Day]) -> [LessonsList] {
    
    var arrayOfDays: [LessonsList] = []
    
    for day in days {
        arrayOfDays.append(LessonsList(day: day))
    }
    
    return arrayOfDays
}
