//
//  UserData.swift
//  Poli Navi
//
//  Created by zhozh on 17.03.2020.
//  Copyright © 2020 zhozh. All rights reserved.
//

import SwiftUI
import Combine

class UserData: ObservableObject {
    
    @Published var schedule = scheduleData
    @Published var isMonthScope = true
}
