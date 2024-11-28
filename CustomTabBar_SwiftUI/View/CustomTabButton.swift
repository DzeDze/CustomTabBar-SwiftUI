//
//  CustomTabButton.swift
//  CustomTabBar_SwiftUI
//
//  Created by Vince P. Nguyen on 2024-11-28.
//

import SwiftUI

struct CustomTabButton: View {
    
    var viewModel: CustomTabButtonViewModel
    @Binding var selectedTabId : Int
    
    var body: some View {
        Button(action: {
            selectedTabId = viewModel.id
        }) {
            HStack (spacing: 8){
                Spacer()
                viewModel.icon.foregroundStyle(selectedTabId == viewModel.id ? viewModel.selectedTitleColor : viewModel.unSelectedTitleColor)
                
                Text(viewModel.title)
                    .foregroundStyle(selectedTabId == viewModel.id ? viewModel.selectedTitleColor : viewModel.unSelectedTitleColor)
                    .lineLimit(1)
                Spacer()
            }
            .padding(.horizontal, 10)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .background(
            GeometryReader { geometry in
                ZStack {
                    (selectedTabId == viewModel.id ? viewModel.selectedBackgroundColor : viewModel.unSelectedBackgroundolor)
                        .cornerRadius(geometry.size.height / 2) // Dynamically set cornerRadius
                }
            }
        )
        .frame(height: 50)
        .animation(.easeInOut(duration: 0.3), value: selectedTabId)
    }
}

#Preview {
    CustomTabButton(viewModel: MockTabBarItems.items[0], selectedTabId: .constant(0))
}

