//
//  MockTabBarItems.swift
//  CustomTabBar_SwiftUI
//
//  Created by Vince P. Nguyen on 2024-11-28.
//

import SwiftUI

struct MockTabBarItems {
    
    static let items = [
        CustomTabButtonViewModel(
            id: 0,
            title: "View 1",
            selectedBackgroundColor: ColorConstants.expensePink,
            unSelectedBackgroundolor: ColorConstants.titleWhite,
            selectedTitleColor: ColorConstants.titleWhite,
            unSelectedTitleColor: ColorConstants.titleDeepBlue,
            icon: Image(systemName: "cart")),
        CustomTabButtonViewModel(
            id: 1,
            title: "View 2",
            selectedBackgroundColor: ColorConstants.incomeGreen,
            unSelectedBackgroundolor: ColorConstants.titleWhite,
            selectedTitleColor: ColorConstants.titleWhite,
            unSelectedTitleColor: ColorConstants.titleDeepBlue,
            icon: Image(systemName: "dollarsign"))
    ]
}
