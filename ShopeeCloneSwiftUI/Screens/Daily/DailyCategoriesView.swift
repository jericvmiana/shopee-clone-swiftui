//
//  DailyCategoriesView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/8/23.
//

import SwiftUI

struct DailyCategoriesView: View {
    
    private let columns: [GridItem] = Array(repeating: .init(.flexible(), spacing: 10), count: 5)

    var body: some View {
        VStack {
            LazyVGrid(columns: columns) {
                ForEach(0..<10) { _ in
                    VStack(spacing: 10) {
                        Image(systemName: "square.stack.3d.up.fill")
                            .foregroundStyle(.yellow)
                            .padding(8)
                            .overlay {
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(.secondary.opacity(0.2), lineWidth: 1)

                            }

                        Text("Coins Rewards")
                            .font(.system(size: 12))
                            .foregroundStyle(.primary)
                            .multilineTextAlignment(.center)
                    }
                    .background(.white)
                }
            }
            .padding([.leading, .trailing, .top], 10)
            HStack {
                Color(.teal)
                    .clipShape(.rect(cornerRadius: 7))
                Color(.red)
                    .clipShape(.rect(cornerRadius: 7))
                    .frame(width: UIScreen.main.bounds.width * 0.4)
                Color(.pink)
                    .clipShape(.rect(cornerRadius: 7))
            }
            .frame(height: 100)
            .padding([.top, .bottom])
            .padding([.leading, .trailing], 5)
        }
        .background(.white)
        .offset(y: -20)
    }
}

#Preview {
    DailyCategoriesView()
}
