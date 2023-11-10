//
//  NotificationsPromotionsView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/10/23.
//

import SwiftUI

struct NotificationsPromotionsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ForEach(0..<4) { index in
                HStack(spacing: 0) {
                    Image(systemName: "tag.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(10)
                        .foregroundStyle(.yellow)
                        .overlay {
                            Circle()
                                .stroke(.secondary, lineWidth: 0.3)
                        }
                        .padding()
                    Color.white
                        .overlay(alignment: .leading) {
                            VStack(alignment:.leading) {
                                Text("Promotions")
                                Text("Shop for 50% OFF deals on Xiaomi, Keds Nike")
                                    .lineLimit(1)
                                    .foregroundStyle(.secondary)
                                    .font(.subheadline)
                            }
                            
                        }
                    
                    Button {} label: {
                        HStack {
                            Text("6")
                                .font(.footnote)
                                .padding(8)
                                .foregroundStyle(.white)
                                .background(.red)
                                .clipShape(.circle)
                            Image(systemName: "chevron.right")
                                .resizable()
                                .frame(width: 10, height: 15)
                                .foregroundStyle(.gray)
                        }
                    }
                    .padding(.trailing)
                }
                .border(width: index == 3 ? 0 : 0.3, edges: [.bottom], color: .appBorder)
                .background(.white)
            }
        }
    }
}

#Preview {
    NotificationsPromotionsView()
}
