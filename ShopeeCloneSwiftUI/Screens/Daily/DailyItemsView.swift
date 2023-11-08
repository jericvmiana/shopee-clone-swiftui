//
//  DailyItemsView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/8/23.
//

import SwiftUI

struct DailyItemsView: View {
    private let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(0..<10) { _ in
                VStack(alignment: .leading) {
                    Image(systemName: "photo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(10)
                        .foregroundStyle(Color.secondary.opacity(0.2))
                    Text("100 LED Beads RGB/ Warm White Christmas Lights")
                        .font(.system(size: 13))
                        .lineLimit(2)
                        .padding([.leading, .trailing], 10)
                    HStack(spacing: 5) {
                        Text("P299.00")
                            .foregroundStyle(.orange)
                        Text("10k+ sold")
                            .font(.system(size: 12))
                            .foregroundStyle(.secondary)
                        Spacer()
                        Image(systemName: "ellipsis")
                    }
                    .padding(10)
                }
                .background(.white)
            }
        }
        .padding([.leading, .trailing], 10)
        .background(Color.secondary.opacity(0.1))
    }
}

#Preview {
    DailyItemsView()
}
