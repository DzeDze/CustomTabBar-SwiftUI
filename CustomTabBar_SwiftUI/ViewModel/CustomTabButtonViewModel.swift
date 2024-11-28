//
//  CustomTabButtonViewModel.swift
//  CustomTabBar_SwiftUI
//
//  Created by Vince P. Nguyen on 2024-11-28.
//

import SwiftUI

struct CustomTabButtonViewModel: Identifiable {
    let id: Int
    let title: String
    let selectedBackgroundColor: Color
    let unSelectedBackgroundolor: Color
    let selectedTitleColor: Color
    let unSelectedTitleColor: Color
    let icon: Image
}
