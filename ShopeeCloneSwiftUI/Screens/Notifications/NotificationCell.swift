//
//  NotificationCell.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/10/23.
//

import SwiftUI

struct NotificationCell: View {
    var index = 0
    var body: some View {
        HStack(spacing: 10) {
            Image(MockData.randomImage)
                .resizable()
                .frame(maxWidth: 40, maxHeight: 40)
                .scaledToFill()
                .padding(.leading, 15)
            Color.white.opacity(0)
                .frame(maxWidth: .infinity)
                .overlay {
                    VStack(alignment: .leading, spacing: 7) {
                        Text("COD Request Confirmed")
                        Text("The COD payment method for your order 231108MY78123HD has been approved.")
                            .foregroundStyle(.secondary)
                            .lineLimit(2)
                        Text("14:33")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                }
            
            Button {} label: {
                Image(systemName: "chevron.down")
                    .resizable()
                    .frame(maxWidth: 14, maxHeight: 8)
            }
            .foregroundStyle(.secondary)
            .padding(.trailing, 15)

        }
        .border(width: index == 9 ? 0 : 0.3, edges: [.bottom], color: .appBorder)
        .frame(height: 120)
        .background(.appPrimary.opacity(0.05))
    }
}

#Preview {
    NotificationCell(index: 0)
}
