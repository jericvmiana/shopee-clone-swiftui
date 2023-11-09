//
//  CarouselView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/8/23.
//

import SwiftUI

struct CarouselView: View {
    private let imageNames: [String] = ["apple", "appliances", "notebooks"]
    private let timer = Timer.publish(every: 1.5, on: .main, in: .common).autoconnect()
    var height: CGFloat = 220
    
    // Step 3: Manage Selected Image Index
    @State private var selectedImageIndex: Int = 0
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedImageIndex) {
                ForEach(0..<imageNames.count, id: \.self) { index in
                    ZStack(alignment: .topLeading) {
                        Image("\(imageNames[index])")
                            .resizable()
                            .scaledToFill()
                            .tag(index)
                    }
                }
            }
            .frame(height: height)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            HStack {
                ForEach(0..<imageNames.count, id: \.self) { index in
                    Circle()
                        .fill(Color.white.opacity(selectedImageIndex == index ? 1 : 0.33))
                        .frame(width: 8, height: 8)
                        .onTapGesture {
                            selectedImageIndex = index
                        }
                }
                .offset(y: 90)
            }
        }
        .onReceive(timer) { _ in
            withAnimation(.default) {
                selectedImageIndex = (selectedImageIndex + 1) % imageNames.count
            }
        }
        
    }
}

#Preview {
    CarouselView()
}
