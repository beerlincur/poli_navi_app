//
//  Lesson.swift
//  Poli Navi
//
//  Created by zhozh on 16.03.2020.
//  Copyright © 2020 zhozh. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Lesson: Decodable {

    init() {
        subject = ""
        subject_short = ""
        type = -1
        additional_info = ""
        time_start = ""
        time_end = ""
        parity = -1
        typeObj = TypeObj()
        groups = [Group]()
        teachers = [Teacher]()
        auditories = [Auditorium]()
    }
    
    var subject: String // "Элективная физическая культура и спорт"
    var subject_short: String // "Элективная физическая культура и спорт"
    var type: Int // 0
    var additional_info: String // "Поток"
    var time_start: String // "10:00"
    var time_end: String // "11:40"
    var parity: Int // 0
    var typeObj: TypeObj
    var groups: [Group]
    var teachers: [Teacher]?
    var auditories: [Auditorium]

}

struct TypeObj: Decodable {
    
    init() {
        id = -1
        name = ""
        abbr = ""
    }
    
    var id: Int // Практика - 27, Лекция - 14
    var name: String // "Практика"
    var abbr: String // "Пр"
}

struct Auditorium: Decodable {
    
    init() {
        id = -1
        name = ""
        building = Building()
    }
    
    var id: Int // 828
    var name: String // "Секции"
    var building: Building
}

struct Building: Decodable {
    
    init() {
        id = -1
        name = ""
        abbr = ""
        address = ""
    }
    
    var id: Int // 30
    var name: String // "Спорткомплекс"
    var abbr: String // "СК"
    var address: String // ""
//    fileprivate var coordinates: Coordinates
//
//    var locationCoordinate: CLLocationCoordinate2D {
//        CLLocationCoordinate2D(
//            latitude: coordinates.latitude,
//            longitude: coordinates.longitude)
//    }
}

struct Teacher: Decodable {
    
    init() {
        id = -1
        oid = -1
        full_name = ""
        first_name = ""
        middle_name = ""
        last_name = ""
        grade = ""
        chair = ""
    }
    
    var id: Int
    var oid: Int
    var full_name: String
    var first_name: String
    var middle_name: String
    var last_name: String
    var grade: String
    var chair: String
}

//struct Coordinates: Hashable, Decodable {
//    var latitude: Double
//    var longitude: Double
//}

//struct Lesson: Decodable {
//    var name: String
//    var number: Int
//}
