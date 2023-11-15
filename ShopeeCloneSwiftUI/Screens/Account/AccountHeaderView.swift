//
//  AccountHeaderVIew.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/10/23.
//

import SwiftUI

struct AccountHeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                HStack(spacing: 20) {
                    Button{} label: {
                        Image(systemName: "gear")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .aspectRatio(contentMode: .fill)
                    }
                    Button{} label: {
                        Image(systemName: "cart")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .aspectRatio(contentMode: .fill)
                    }
                    Button{} label: {
                        Image(systemName: "message")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .aspectRatio(contentMode: .fill)
                    }
                }
                .padding(.trailing)
                .foregroundStyle(.white)
            }
            .padding(.top)
            HStack(spacing: 15) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .foregroundStyle(.white)
                    .padding(.leading)
                VStack(alignment: .leading, spacing: 5) {
                    Text("jvmiana20")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundStyle(.white)
                    HStack {
                        Text("Platinum Member ")
                            .foregroundStyle(.white)
                            .font(.system(size: 12, weight: .bold))
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 5, height: 8)
                            .foregroundStyle(.appBorder)
                    }
                    .padding([.top, .bottom], 5)
                    .padding([.leading, .trailing], 10)
                    .background(.appGray)
                    .clipShape(.capsule)
                    
                    HStack {
                        Text("Followers 1")
                        Divider()
                        Text("Following 19")
                    }
                    .font(.subheadline)
                    .foregroundStyle(.white)
                    .frame(height: 20)
                    
                }
                Spacer()
            }
            .padding(.bottom)
        }
        .background(.red.gradient)
    }
}

#Preview {
    AccountHeaderView()
}
