//
//  CustomTabBar.swift
//  CustomTabBar_SwiftUI
//
//  Created by Vince P. Nguyen on 2024-11-28.
//

import SwiftUI

struct CustomTabBar: View {
    let items: [CustomTabButtonViewModel]
    @Binding var selectedTabId: Int
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.white)
                .cornerRadius(30)
                .shadow(color: .gray, radius: 2)
                .opacity(0.5)
            GeometryReader(content: { geometry in
                HStack {
                    ForEach(items, id: \.id) { item in
                        CustomTabButton(viewModel: item, selectedTabId: $selectedTabId)
                    }
                }.frame(width: geometry.size.width - 10, height: geometry.size.height - 10)
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
            })
            
        }.frame(width: SizeConstants.screenWidth - 20, height: 60)
    }
}

private extension CustomTabBar {
    
}

#Preview {
    CustomTabBar(items: MockTabBarItems.items, selectedTabId: .constant(0))
}
