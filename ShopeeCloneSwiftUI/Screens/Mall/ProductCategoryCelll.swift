//
//  ProductCategoryCelll.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/9/23.
//

import SwiftUI

struct ProductCategoryCelll: View {
    var rowProduct: RowProduct
    var body: some View {
        VStack(spacing: 20) {
           
            VStack {
                Image(rowProduct.products[0].imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(.circle)
                Text(rowProduct.products[0].name)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .lineLimit(2, reservesSpace: true)
                    .frame(width: 120)
                    .multilineTextAlignment(.center)
            }
           
            
            VStack {
                Image(rowProduct.products[1].imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(.circle)
                Text(rowProduct.products[1].name)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .lineLimit(2, reservesSpace: true)
                    .frame(width: 120)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

#Preview {
    ProductCategoryCelll(rowProduct: RowProduct(products: [
        Product(name: "Health & Personal Care", imageName: "apple"),
        Product(name: "Health & Personal Care", imageName: "apple"),
        Product(name: "Health & Personal Care", imageName: "apple"),
    ]))
}
