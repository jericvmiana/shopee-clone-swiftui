//
//  VouchersView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/8/23.
//

import SwiftUI

struct VouchersView: View {
    var body: some View {
        VStack(alignment: .leading) {
            SectionTitleView(title: "DAILY VOUCHERS")
            ForEach(0..<2) { _ in
                HStack {
                    VStack {
                        Spacer()
                        Text("BIGATING VOUCHER")
                            .font(.system(size: 12, weight: .semibold))
                            .foregroundStyle(.white)
                        Spacer()

                        Text("SHOPEE")
                            .font(.system(size: 14))
                            .foregroundStyle(.white)
                        Spacer()
                    }
                    .frame(width: 100, height: 120)
                    .background(.appPrimary)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("30% off")
                            .font(.system(size: 16, weight: .semibold))
                        Text("Min. Spend P3k Capped at P1.5k")
                            .font(.system(size: 13))
                            .foregroundStyle(.secondary)
                        Text("Expiring: 4 hours left")
                            .font(.system(size: 12))
                            .foregroundStyle(.red)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Claim")
                            .padding([.leading, .trailing], 10)
                            .padding([.top, .bottom], 5)

                            .background(.appPrimary)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing, 10)
                    
                }
                .border(.secondary, width: 0.3)
                .overlay(alignment: .bottomTrailing) {
                    Text("T&C")
                        .padding([.bottom, .trailing], 10)
                        .font(.system(size: 12))
                        .foregroundStyle(.blue)
                }
                .frame(maxWidth: .infinity)
            }
        }
        .background(.white)
    }
}

#Preview {
    VouchersView()
}
