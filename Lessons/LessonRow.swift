//
//  LessonRow.swift
//  Poli Navi
//
//  Created by zhozh on 16.03.2020.
//  Copyright © 2020 zhozh. All rights reserved.
//

import SwiftUI

struct LessonRow: View {
    
    var lesson: Lesson
    
    let pairNumber = [
        "08:00": "1",
        "10:00": "2",
        "12:00": "3",
        "14:00": "4",
        "16:00": "5",
        "18:00": "6",
        "20:00": "7"
    ]
    
    var body: some View {
        
        VStack {
            
            // pairNumber , pairType and timeStart-timeEnd
            HStack {
                Text((pairNumber[lesson.time_start] == nil) ? "0" : pairNumber[lesson.time_start]!)
                    .padding()
                
                Text((lesson.typeObj.name == "Лекции") ? "Лекция" : lesson.typeObj.name)
                    
                Spacer()
                
                Text("\(lesson.time_start)-\(lesson.time_end)")
                .padding()
                
            }
            .font(.subheadline)
            .foregroundColor(.gray)
            //.foregroundColor(Color(red: 204/255, green: 204/255, blue: 255/25))
            //.background(Color(red: 204/255, green: 204/255, blue: 255/255))
            
            // subject
            HStack {
                Text(lesson.subject)
                    .fontWeight(.bold)
                    .opacity(0.8)
                    .padding(.leading)
                Spacer()
            }
            
            // teacher
            if (lesson.teachers != nil) {
                HStack {
                    Text(lesson.teachers![0].full_name)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.leading)
                        .padding(.top, 8)
                    Spacer()
                }
            }
            
            // building and auditorium
            HStack {
                Text("\(lesson.auditories[0].building.name), ауд. \(lesson.auditories[0].name)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.leading)
                    .padding(.top)
                
                Spacer()
            }
            
            
                
        }
        
            
    }
}

struct LessonRow_Previews: PreviewProvider {
    static var previews: some View {
        LessonRow(lesson: scheduleData.days[0].lessons[1])
            .previewLayout(.fixed(width: 450, height: 130))
    }
}
