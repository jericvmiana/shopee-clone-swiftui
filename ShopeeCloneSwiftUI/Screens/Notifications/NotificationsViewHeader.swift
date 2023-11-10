//
//  NotificationsViewHeader.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/10/23.
//

import SwiftUI

struct NotificationsViewHeader: View {
    var body: some View {
        HStack {
            HStack(spacing: 30) {
                Text("Notifications")
                    .font(.system(size: 21, weight: .semibold))
                    .padding()
                    .frame(maxWidth: .infinity)
            }
            .overlay(alignment: .trailing) {
                HStack(spacing: 15) {
                    Button {} label: {
                        Image(systemName: "cart")
                            .resizable()
                            .frame(width: 23, height: 23)
                    }
                    
                    Button {} label: {
                        Image(systemName: "message")
                            .resizable()
                            .frame(width: 23, height: 23)
                        
                    }
                }
                .padding(.trailing)
            }
            .frame(maxHeight: 80)
            .foregroundStyle(.white)
        }
        .background(.red.gradient)
    }
}

#Preview {
    NotificationsViewHeader()
}
