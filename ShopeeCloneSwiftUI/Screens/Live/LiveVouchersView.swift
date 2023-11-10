//
//  LiveVouchersView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/9/23.
//

import SwiftUI

struct LiveVouchersView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 10) {
                ForEach(0..<10) { _ in
                    VStack(spacing: 0) {
                        Image("shopee-banner2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 120, height: 40)
                            .clipped()
                        Text("Coming Soon")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                            .padding(5)
                    }
                    .border(.appBorder)
                }
            }
            
        }
        .scrollIndicators(.hidden)
        .contentMargins(15, for: .scrollContent)
    }
}

#Preview {
    LiveVouchersView()
}
