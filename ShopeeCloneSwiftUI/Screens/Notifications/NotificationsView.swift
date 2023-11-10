//
//  Notifications.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/8/23.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack(spacing: 0) {
            
            NotificationsViewHeader()
            
            ScrollView {
                NotificationsPromotionsView()
                HStack {
                    Text("Order Updates")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Spacer()
                    Button {} label: {
                        HStack {
                            Text("Read All (25)")
                                .font(.subheadline)
                                .foregroundStyle(.appPrimary)
                        }
                    }
                }
                .padding([.trailing, .leading])
                .padding([.top, .bottom], 10)
                
                VStack(spacing: 0) {
                    ForEach(0..<10) { index in
                        NotificationCell(index: index)
                    }
                }
            }
            .background(.scrollBackground)
            .scrollIndicators(.hidden)
          
        }
    }
}

#Preview {
    NotificationsView()
}
