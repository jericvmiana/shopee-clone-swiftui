//
//  CashInView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/8/23.
//

import SwiftUI

struct CashInView: View {
    var body: some View {
        HStack {
            Button {
            } label: {
                Image(systemName: "qrcode.viewfinder")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
           
            ForEach(0..<3) { _ in
                Divider()
                    .padding([.top, .bottom])
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Image(systemName: "dollarsign.circle")
                            .foregroundStyle(.orange)
                        Text("P48.00")
                            .lineLimit(1)
                            .font(.system(size: 14))
                            .foregroundStyle(.primary)
                    }
                    Text("Cash-in via Instapay")
                        .font(.system(size: 12))
                        .lineLimit(2)
                }
                .padding(5)
            }

        }
        .padding()
        .background(.white)
        .clipShape(.rect(cornerRadius: 7))
        .shadow(color: .secondary.opacity(0.3), radius: 4, y: 2)
        .foregroundStyle(.secondary)
        .offset(y: -20)
    }
}

#Preview {
    CashInView()
}
