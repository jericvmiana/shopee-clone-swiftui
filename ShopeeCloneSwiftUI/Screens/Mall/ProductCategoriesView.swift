//
//  ProductCategoriesView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/9/23.
//

import SwiftUI

struct Product: Identifiable {
    var id = UUID()
    let name: String
    let imageName: String
}
struct RowProduct: Identifiable {
    var id = UUID()
    var products: [Product]
}

struct ProductCategoriesView: View {
    private let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 10)
    
    @State var items: [RowProduct] = [
        RowProduct(products: [
            Product(name: "Health & Personal Care", imageName: "apple"),
            Product(name: "Health & Personal Care", imageName: "apple"),
        ]),
        RowProduct(products: [
            Product(name: "Health & Personal Care", imageName: "apple"),
            Product(name: "Health & Personal Care", imageName: "apple"),
        ]),
        RowProduct(products: [
            Product(name: "Health & Personal Care", imageName: "apple"),
            Product(name: "Health & Personal Care", imageName: "apple"),
        ]),
        RowProduct(products: [
            Product(name: "Health & Personal Care", imageName: "apple"),
            Product(name: "Health & Personal Care", imageName: "apple"),
        ]),
        RowProduct(products: [
            Product(name: "Health & Personal Care", imageName: "apple"),
            Product(name: "Health & Personal Care", imageName: "apple"),
        ]),
        RowProduct(products: [
            Product(name: "Health & Personal Care", imageName: "apple"),
            Product(name: "Health & Personal Care", imageName: "apple"),
        ])
   ]
                   
    
    var body: some View {
        VStack(alignment: .leading) {
            SectionTitlePlainView(title: "CATEGORIES", addSeeMoreBtn: true)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(items) { item in
                        ProductCategoryCelll(rowProduct: item)
                    }
                }
            }
            .padding(.bottom, 10)
            .scrollIndicators(.hidden)
        }
        .background(.white)
    }
}

#Preview {
    ProductCategoriesView()
}
