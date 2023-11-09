//
//  SaleProductsMallView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/8/23.
//

import SwiftUI

struct SaleProductsMallView: View {
    var body: some View {
        VStack(spacing: 0) {
            Color(.red)
                .frame(height: 120)
                .clipped()
            VStack {
                HStack {
                    Spacer()
                    Button {
            
                    } label: {
                        HStack{
                            Text("See all")
                                .font(.system(size: 15))
                            Image(systemName: "chevron.right")
                        }
                        .padding(.top, 12)
                        .padding(.trailing, 10)
                        .foregroundStyle(.white)
                    }
                }
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0..<5) { _ in
                            VStack {
                                Image("apple")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 170, height: 180)
                                    .clipped()

                                VStack {
                                    Text("Xiaomi Pad 6 8 + 256 Global Version With")
                                        .lineLimit(2)
                                    Spacer()
                                    HStack {
                                        Text("P21,999")
                                            .foregroundStyle(.orange)
                                        Spacer()
                                        Image(systemName: "cart")
                                            .resizable()
                                            .frame(width: 20, height: 20)
                                            .padding(10)
                                            .foregroundStyle(.white)
                                            .background(Circle().foregroundStyle(.red))
                                    }
                                }
                                .padding(5)
                            }
                            .background(.white)
                            .frame(width: 170, height: 320)
                        }
                    }
                }
                .contentMargins(10, for: .scrollContent)
                .scrollIndicators(.hidden)
            }
            .background(Color.red.gradient)
        }
    }
}

#Preview {
    SaleProductsMallView()
}
