//
//  ContentView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DailyView()
                .tabItem {
                    Image(systemName: "hand.thumbsup.fill")
                }
            MallView()
                .tabItem {
                    Image(systemName: "tray.fill")
                }
            LiveView()
                .tabItem {
                    Image(systemName: "video.fill")
                }
            NotificationsView()
                .tabItem {
                    Image(systemName: "bell.fill")
                }
            MeView()
                .tabItem {
                    Image(systemName: "person.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
