//
//  PageView.swift
//  Poli Navi
//
//  Created by zhozh on 17.03.2020.
//  Copyright © 2020 zhozh. All rights reserved.
//

import SwiftUI

var toFeed = completeWeekSlider(days: scheduleData.days)

struct PageView<Page: View>: View {
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 0

    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
            PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage)
                .padding(.trailing)
        }
    }
}

//struct PageView_Previews: PreviewProvider {
//    static var previews: some View {
//        PageView(features.map { FeatureCard(landmark: $0) })
//            .aspectRatio(3 / 2, contentMode: .fit)
//    }
//}


struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(toFeed)
            .aspectRatio(5 / 9, contentMode: .fit)
    }
}

