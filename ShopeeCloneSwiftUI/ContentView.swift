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
                    Text("Home")
                }
            MallView()
                .tabItem {
                    Image(systemName: "tray.fill")
                    Text("Mall")
                }
            LiveView()
                .tabItem {
                    Image(systemName: "video.fill")
                    Text("Live")
                }
            NotificationsView()
                .tabItem {
                    Image(systemName: "bell.fill")
                    Text("Notification")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Me")
                }
        }
        .tint(.appPrimary)
    }
}

#Preview {
    ContentView()
}
