//
//  Day.swift
//  Poli Navi
//
//  Created by zhozh on 16.03.2020.
//  Copyright © 2020 zhozh. All rights reserved.
//

import SwiftUI

struct Day: Decodable {
    
    init() {
        weekday = -1
        date = ""
        lessons = [Lesson]()
    }
    
    var weekday: Int // 1 - понедельник, 6 - суббота
    var date: String // "2020-03-21"
    var lessons: [Lesson]
}
