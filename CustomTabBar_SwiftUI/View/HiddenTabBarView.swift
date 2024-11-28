//
//  HiddenTabBarView.swift
//  CustomTabBar_SwiftUI
//
//  Created by Vince P. Nguyen on 2024-11-28.
//

import SwiftUI

struct HiddenTabBarView: View {
    @Binding var selectedTab: Int
    let disabledTab: Bool
    var body: some View {
        TabView(selection: $selectedTab) {
            ZStack {
                Rectangle()
                Text("View 1")
                    .foregroundStyle(ColorConstants.titleWhite)
            }
            .foregroundStyle(ColorConstants.expensePink)
            .frame(width: SizeConstants.screenWidth, height: SizeConstants.screenHeight)
            .tag(0)
                
            ZStack {
                Rectangle()
                Text("View 2")
                    .foregroundStyle(ColorConstants.titleWhite)
            }
            .foregroundStyle(ColorConstants.incomeGreen)
            .frame(width: SizeConstants.screenWidth, height: SizeConstants.screenHeight)
            .tag(1)
        }
        .disabled(disabledTab)
    }
}

#Preview {
    HiddenTabBarView(selectedTab: .constant(0), disabledTab: true)
}
