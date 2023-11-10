//
//  Live.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/8/23.
//

import SwiftUI

struct LiveView: View {
    var body: some View {
        VStack {
            HStack(spacing: 30) {
                Button {
                } label: {
                    Text("Discover")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)

                }
                Button {
                } label: {
                    Text("For you")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                }
            }
            .overlay(alignment: .bottom) {
                RoundedRectangle(cornerRadius: 7)
                    .foregroundStyle(.black)
                    .frame(width: 20, height: 3)
                    .offset(x: -43, y: 10)
            }
            
            .padding(.bottom)
            
            ScrollView {
                VStack(spacing: 0) {
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            ForEach(0..<10) { _ in
                                VStack(spacing: 10) {
                                    Image(MockData.randomImage)
                                        .resizable()
                                        .frame(width: 60, height: 60)
                                        .clipShape(.circle)
                                        .overlay {
                                            Text("LIVE")
                                                .font(.system(size: 10, weight: .semibold))
                                                .padding([.leading, .trailing], 7)
                                                .padding([.top, .bottom], 5)
                                                .border(.white, width: 3)
                                                .background(.red)
                                                .foregroundStyle(.white)
                                                .zIndex(1)
                                                .offset(y: 30)
                                            Circle()
                                                .stroke(Color.red.gradient, lineWidth: 2)
                                        }

                                    Text(MockData.randomName)
                                        .font(.subheadline)
                                        .foregroundStyle(.secondary)
                                }
                            }
                        }
                        
                    }
                    .border(width: 0.5, edges: [.top], color: .secondary.opacity(0.3))
                    .scrollIndicators(.hidden)
                    .contentMargins(15, for: .scrollContent)
                    
                    CarouselView()
                    LiveVouchersView()
                    
                    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
                    LazyVGrid(columns: columns) {
                        ForEach(0..<10) { _ in
                            
                            VStack {
                                Image("shopee-banner1")
                                    .resizable()
                                    .frame(maxWidth: .infinity, maxHeight: 280)
                                    .scaledToFill()
                            }
                        }
                    }
                    .padding([.leading, .trailing], 5)
                    .background(.orange.opacity(0.5))
                }
            }
        }
    }
}

#Preview {
    LiveView()
}
