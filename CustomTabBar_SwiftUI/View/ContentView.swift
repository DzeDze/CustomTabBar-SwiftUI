//
//  ContentView.swift
//  CustomTabBar_SwiftUI
//
//  Created by Vince P. Nguyen on 2024-11-28.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack(alignment: .top){
            HiddenTabBarView(selectedTab: $selectedTab, disabledTab: true)
            CustomTabBar(items: MockTabBarItems.items, selectedTabId: $selectedTab)
        }
    }
}

#Preview {
    ContentView()
}
