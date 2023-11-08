//
//  NavigationBar.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/8/23.
//

import SwiftUI

struct NavigationBar: View {
    @State private var searchString = ""
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("", text: $searchString, prompt: Text("Search").foregroundColor(.orange))
                Button("", systemImage: "camera") {
                    
                }
            }
            .foregroundStyle(.secondary)
            .padding(8)
            .background(.white)

            HStack(spacing: 15) {
                Button {
                    
                } label: {
                    Image(systemName: "cart")
                        .resizable()
                        .frame(width: 25, height: 25)

                }
                
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis.bubble")
                        .resizable()
                        .frame(width: 25, height: 25)

                }
            }
            .foregroundStyle(.white)
            .padding(.leading, 10)
           
        }
        .padding()
        .background(Color.red.gradient)
    }
}

#Preview {
    NavigationBar()
}
