//
//  SectionTitlePlainView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/9/23.
//

import SwiftUI

struct SectionTitlePlainView: View {
    var title = "BRAND VOUCHERS"
    var addSeeMoreBtn = false
    var body: some View {
        
        Color.white
            .overlay(alignment: .leading) {
                HStack {
                    Text(title)
                        .foregroundStyle(.red)
                        .font(.system(size: 20, weight: .semibold))
                        .padding(.leading, 10)
                    Spacer()
                    
                    if addSeeMoreBtn {
                        Button {
                            
                        } label: {
                            HStack {
                                Text("See More")
                                    .font(.subheadline)
                                
                                Image(systemName: "chevron.right")
                            }
                        }
                        .padding(.trailing, 10)
                    }
                }
            }
            .foregroundStyle(.secondary)
            .frame(height: 50)
        
      
    }
}

#Preview {
    SectionTitlePlainView()
}
