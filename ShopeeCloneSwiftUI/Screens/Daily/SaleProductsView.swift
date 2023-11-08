//
//  SaleProductsView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/8/23.
//

import SwiftUI

struct SaleProductsView: View {
    var body: some View {
        VStack {
            VStack {
                Text("11.11 MEGA PAMASKO SALE")
                    .font(.system(size: 22, weight: .bold))
                    .foregroundStyle(.white)
                    .padding(.top, 15)
                HStack {
                    Text("MORE PAMASKO DEALS!")
                        .bold()
                        .foregroundStyle(.white)
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("See more")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundStyle(.white)
                        Image(systemName: "chevron.forward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 12, height: 12)
                            .foregroundStyle(.white)
                    }
                }
                .padding(10)
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0..<10) { _ in
                            VStack {
                                Image(systemName: "text.below.photo")
                                    .resizable()
                                    .frame(width: 100)
                                    .foregroundStyle(.secondary.opacity(0.2))
                                Text("P1,000")
                                .font(.system(size: 15, weight: .semibold))
                            }
                            .overlay(alignment: .topTrailing) {
                                VStack {
                                    Text("12%")
                                        .font(.footnote)
                                        .foregroundStyle(.orange)
                                    Text("OFF")
                                        .font(.footnote)
                                        .foregroundStyle(.white)
                                }
                                .padding(5)
                                .background(.yellow)
                            }
                            .frame(width: 100)
                        }
                    }
                    .background(.white)
                }
                .scrollIndicators(.hidden)
                .padding([.leading, .trailing], 10)
                .frame(height: 170)
                
                HStack {
                    Text("MORE PAMASKO DEALS!")
                        .bold()
                        .foregroundStyle(.white)
                    Spacer()
                    Button {
                        
                    } label: {
                        HStack {
                            Text("See more")
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundStyle(.white)
                            Image(systemName: "chevron.forward")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 12, height: 12)
                                .foregroundStyle(.white)
                        }
                        
                    }
                }
                .padding(10)

                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0..<10) { _ in
                            VStack {
                                Image(systemName: "text.below.photo")
                                    .resizable()
                                    .frame(width: 100)
                                    .foregroundStyle(.secondary.opacity(0.2))
                                Text("P1,000")
                                .font(.system(size: 16, weight: .semibold))
                            }
                            .overlay(alignment: .topTrailing) {
                                VStack {
                                    Text("12%")
                                        .font(.footnote)
                                        .foregroundStyle(.orange)
                                    Text("OFF")
                                        .font(.footnote)
                                        .foregroundStyle(.white)
                                }
                                .padding(5)
                                .background(.yellow)
                            }
                            
                        }
                    }
                    .background(.white)
                }
                .scrollIndicators(.hidden)
                .padding([.leading, .trailing], 10)
                .frame(height: 170)
                .padding(.bottom, 20)
            }
            .background(Color.red.gradient)
            .clipShape(.rect(cornerRadius: 7))
        }
    }
}

#Preview {
    SaleProductsView()
}
