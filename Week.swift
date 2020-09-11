//
//  Week.swift
//  Poli Navi
//
//  Created by zhozh on 16.03.2020.
//  Copyright © 2020 zhozh. All rights reserved.
//

import SwiftUI

struct Week: Decodable {
    
    init() {
        week = week_t()
        days = [Day]()
    }
    
    var week: week_t
    var days: [Day]
}

struct week_t: Decodable {
    
    init() {
        date_start = ""
        date_end = ""
        is_odd = false
    }
    
    var date_start: String
    var date_end: String
    var is_odd: Bool
}
