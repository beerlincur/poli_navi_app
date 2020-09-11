//
//  LessonsScroll.swift
//  Poli Navi
//
//  Created by zhozh on 17.03.2020.
//  Copyright © 2020 zhozh. All rights reserved.
//

import SwiftUI

struct LessonsScroll: View {
    
    @EnvironmentObject private var userData: UserData
    var day: Day
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(alignment: .center, spacing: 0) {
                    ForEach(self.day.lessons, id: \.time_start) { lesson in
                        Section {
                            LessonRow(lesson: lesson)
                        }
                        .fixedSize(horizontal: true, vertical: true)
                    }
                }
            }
        }
    }
}

struct LessonsScroll_Previews: PreviewProvider {
    static var previews: some View {
        LessonsScroll(day: scheduleData.days[0]).environmentObject(UserData())
    }
}
