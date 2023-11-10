//
//  DailyCategoriesView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/8/23.
//

import SwiftUI

struct Category {
    let columns: [GridItem]
    var items: Int
}

struct CategoriesView: View {
    
    var category: Category
    
    var body: some View {
        VStack {
            LazyVGrid(columns: category.columns) {
                ForEach(0..<category.items, id: \.self) { _ in
                    VStack(spacing: 10) {
                        Image(systemName: "square.stack.3d.up.fill")
                            .foregroundStyle(.yellow)
                            .padding(8)
                            .overlay {
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(.appBorder, lineWidth: 1)
                            }
                        Text("Coins Rewards")
                            .font(.system(size: 12))
                            .foregroundStyle(.primary)
                            .multilineTextAlignment(.center)
                    }
                    .background(.white)
                }
            }
            .padding(10)
        }
        .background(.white)
    }
}

#Preview {
    CategoriesView(
        category: Category(columns: .init(repeating: .init(.flexible()), count: 5),
                           items: 5)
    )
}
