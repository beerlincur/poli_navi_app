//
//  Group.swift
//  Poli Navi
//
//  Created by zhozh on 16.03.2020.
//  Copyright © 2020 zhozh. All rights reserved.
//

import SwiftUI

struct Group: Hashable, Decodable, Identifiable {
    
    init() {
        id = -1
        name = ""
        level = -1
        type = ""
        kind = -1
        spec = ""
        year = -1
        faculty = Faculty()
    }
    
    var id: Int // 28972
    var name: String // "3530202/90002"
    var level: Int // 1
    var type: String // "common"
    var kind: Int // 0
    var spec: String // "02.03.02 Фундаментальная информатика и информационные техно"
    var year: Int // 2019
    var faculty: Faculty
}


struct Faculty: Hashable, Decodable, Identifiable {
    
    init() {
        id = -1
        name = ""
        abbr = ""
    }
    
    var id: Int // 95
    var name: String // "Институт компьютерных наук и технологий"
    var abbr: String // "ИКНТ"
}
