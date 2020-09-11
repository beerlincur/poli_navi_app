//
//  SwiftUIView.swift
//  Poli Navi
//
//  Created by zhozh on 16.03.2020.
//  Copyright © 2020 zhozh. All rights reserved.
//

import SwiftUI

let scheduleData: Week = load()

func load() -> Week {
    
    let data: Data
    let jsonDecoder = JSONDecoder()
    let dataFromJson: Week
    
    if let fileLocation = Bundle.main.url(forResource: "schedule", withExtension: "json") {
        
        do {
            data = try Data(contentsOf: fileLocation)
            dataFromJson = try jsonDecoder.decode(Week.self, from: data)
            
            //print(dataFromJson)
            return dataFromJson
        } catch {
            print(error)
        }
    }
    
    return Week()
}

//public class DataLoader {
//
//    init() {
//        load()
//        //sort()
//    }
//
//
//    func load() {
//
//        if let fileLocation = Bundle.main.url(forResource: "schedule", withExtension: "json") {
//
//            do {
//                let data = try Data(contentsOf: fileLocation)
//                let jsonDecoder = JSONDecoder()
//                let dataFromJson = try jsonDecoder.decode(Week.self, from: data)
//
//                //print(dataFromJson)
//
//                self.scheduleData = dataFromJson
//            } catch {
//                print(error)
//            }
//        }
//
//    }
//}
