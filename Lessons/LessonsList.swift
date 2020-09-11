//
//  LessonsList.swift
//  Poli Navi
//
//  Created by zhozh on 17.03.2020.
//  Copyright © 2020 zhozh. All rights reserved.
//

import SwiftUI

//struct LessonsList: View {
//
//    @EnvironmentObject private var userData: UserData
//
//    var body: some View {
//        List {
//            ForEach(userData.schedule.days[0].lessons, id: \.time_start) { lesson in
//                NavigationLink(destination: Text("hello")){
//                    LessonRow(lesson: lesson)
//                }
//                .navigationBarTitle("Lessons")
//
//            }
//        }
//    }
//}
//
//struct LessonsList_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            LessonsList().environmentObject(UserData())
//        }
//    }
//}

struct LessonsList: View {
    
    @EnvironmentObject private var userData: UserData
    var day: Day
    
    var body: some View {
        List {
            ForEach(self.day.lessons, id: \.time_start) { lesson in
                    LessonRow(lesson: lesson)
            }
        }
    }
}

struct LessonsList_Previews: PreviewProvider {
    static var previews: some View {
        LessonsList(day: scheduleData.days[0]).environmentObject(UserData())
    }
}
