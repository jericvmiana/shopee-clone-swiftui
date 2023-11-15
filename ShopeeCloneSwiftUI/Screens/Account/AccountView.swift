//
//  Me.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/8/23.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack(spacing: 0) {
            
            AccountHeaderView()
            
            ScrollView {

                VStack(alignment: .leading, spacing: 0) {

                    VerifyAccountView()
                        
                    VStack(alignment: .leading, spacing: 0) {
                        AccountViewSection(icon: "circle.hexagongrid.circle",
                                           title: "ShopeePay Extra Cashback",
                                           showRightButton:  false)
                        AccountCategoriesView()
                        Divider()
                        AccountViewSection(icon: "list.clipboard",
                                           iconColor: .blue,
                                           title: "My Purchases",
                                           rightButtonTitle: "View Purchase History")
                        AccountSectionItemsView(items: MockData.myPurchasesItems)
                        AccountViewSection(icon: "iphone.gen3.circle",
                                           iconColor: .green,
                                           title: "Digital Purchase",
                                           showRightButton: false)
                    }
                    .background(.white)
                    .padding(.bottom, 10)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        AccountViewSection(icon: "wallet.pass", title: "My Wallet")
                        AccountSectionItemsView(items: MockData.myWalletItems)
                        Divider()
                        AccountViewSection(icon: "hands.and.sparkles",
                                           title: "SLoan",
                                           rightButtonTitle: "Get up to P50,000",
                                           rightButtonTitleColor: Color.orange)
                        AccountViewSection(icon: "poweroutlet.type.h",
                                           title: "SeaBank",
                                           rightButtonTitle: "Cash-In/Out for Free")
                        AccountViewSection(icon: "shield.checkered",
                                           title: "My Insurance",
                                           rightButtonTitle: "View and Claim")
                    }
                    .background(.white)
                    .padding(.bottom, 10)

                    
                    VStack(alignment: .leading, spacing: 0) {
                        AccountViewSection(icon: "list.clipboard",
                                           title: "Buy Again",
                                           rightButtonTitle: "See More Items")
                        
                        BoughtProductsView()
                    }
                    .background(.white)
                    .padding(.bottom, 10)
                    
                    AccountViewSection(icon: "storefront",
                                       title: "Start Selling",
                                       titleColor: Color.appPrimary,
                                       rightButtonTitle: "Free registration")
                    .background(.appPrimary.opacity(0.05))

                    VStack(alignment: .leading, spacing: 0) {
                        AccountViewSection(icon: "medal", 
                                           title: "Shopee Loyalty",
                                           rightButtonTitle: "Platinum Member")
                        AccountViewSection(icon: "heart",
                                           title: "My Likes")
                        AccountViewSection(icon: "circle.hexagongrid.circle",
                                           iconColor: .yellow,
                                           title: "Following Shops")
                        AccountViewSection(icon: "gift",
                                           iconColor: Color.blue,
                                           title: "Shopee Prizes",
                                           rightButtonTitle: "Match candies & win!")
                        AccountViewSection(icon: "clock",
                                           iconColor: Color.blue,
                                           title: "Recently Viewed")
                        AccountViewSection(icon: "star",
                                           iconColor: Color.green,
                                           title: "My Rating")
                    }
                    .background(.white)
                    .padding([.top, .bottom], 10)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        AccountViewSection(icon: "person.crop.circle.fill",
                                           iconColor: Color.blue,
                                           title: "Account Settings",
                                           rightButtonTitle: "Platinum Member")
                        AccountViewSection(icon: "questionmark.circle",
                                           iconColor: Color.green,
                                           title: "Help Centre")
                        AccountViewSection(icon: "headphones",
                                           title: "Chat with Shopee")
                      
                    }
                    .background(.white)
                    .padding([.top, .bottom], 10)
                }
            }
            .ignoresSafeArea()
            .background(.scrollBackground)
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    AccountView()
}
