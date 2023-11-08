//
//  DailyLiveCellView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/8/23.
//

import SwiftUI

struct DailyLiveCellView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Color.pink
            VStack(alignment: .leading) {
                HStack {
                    HStack {
                        Image(systemName: "circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 8)
                            .foregroundStyle(.white)
                        Text("LIVE")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundStyle(.white)
                    }
                    .padding([.top, .bottom], 5)
                    .padding([.leading, .trailing], 10)
                    .background(.orange)
                    
                    HStack {
                        Image(systemName: "eye.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 8)
                            .foregroundStyle(.white)
                        Text("93")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundStyle(.white)
                    }
                    .padding([.top, .bottom], 5)
                    .padding([.leading, .trailing], 10)
                    .background(.primary.opacity(0.7))
                    

                }
                .padding()
                Spacer()
                Text("SALE 🌟 SALE 🌟 NEW ARRIVAL 🌟")
                    .padding()
                    .foregroundStyle(.white)
                    .lineLimit(2)
            }
        }
        .frame(width: 200, height: 350)
    }
}

#Preview {
    DailyLiveCellView()
}
