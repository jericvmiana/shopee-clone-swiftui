//
//  VerifyAccountView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/10/23.
//

import SwiftUI

struct VerifyAccountView: View {
    var body: some View {
        HStack(spacing: 0) {
            Image(systemName: "mail")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 15)
                .padding([.leading, .trailing], 10)
            
            Group {
                Text("Verify your email to help us confirm your identity, protect your account and receive order updates.") + Text("\nSet now").foregroundStyle(.blue)
                
            }
            .frame(maxWidth: .infinity)
            .padding([.top, .bottom])
            .font(.system(size: 12))
            
            Button {} label: {
                Image(systemName: "xmark")
                    .padding()
            }
            
        }
        .foregroundStyle(.appGray)
        .background(.white)
        .clipShape(.rect(cornerRadius: 7))
        .padding(10)
    }
    
}

#Preview {
    VerifyAccountView()
}
