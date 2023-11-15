//
//  BoughtProductsView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/15/23.
//

import SwiftUI

struct BoughtProductsView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<10) { _ in
                    VStack(alignment: .leading) {
                        Image(MockData.randomImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120, height: 80)
                            .padding()
                        Text("Purchased Shop")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                            .padding([.leading, .trailing], 10)

                        HStack {
                            Text("P321")
                                .font(.subheadline)
                                .foregroundStyle(.appPrimary)
                            Spacer()
                            Image(systemName: "cart")
                                .resizable()
                                .frame(height: 10)
                                .aspectRatio(1, contentMode: .fit)
                                .foregroundStyle(.white)
                                .padding(10)
                                .background(.appPrimary)
                                .clipShape(.circle)
                        }
                        .padding([.leading, .trailing, .bottom], 10)
                    }
                    .border(.appGray, width: 0.4)
                }
            }
            
        }
        .scrollIndicators(.hidden)
        .contentMargins(10, for: .scrollContent)
    }
}

#Preview {
    BoughtProductsView()
}
